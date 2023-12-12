package orishop.controllers.shipper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import orishop.DAO.CustomerDAOImp;
import orishop.DAO.IEmployeeDAO;
import orishop.models.AccountModels;
import orishop.models.CategoryModels;
import orishop.models.CustomerModels;
import orishop.models.EmployeeModels;
import orishop.models.OrdersModels;
import orishop.services.CategoryServiceImp;
import orishop.services.CustomerServiceImp;
import orishop.services.EmployeeServiceImp;
import orishop.services.ICategoryService;
import orishop.services.ICustomerService;
import orishop.services.IEmployeeService;
import orishop.services.IOrderService;
import orishop.services.OrderServiceImpl;

@WebServlet(urlPatterns = {"/shipper/home", "/shipper/order", "/shipper/updateinfor", "/shipper/updateorder"})

public class ShipperHomeControllers extends HttpServlet {
	ICategoryService cateService = new CategoryServiceImp();
	IEmployeeService empService = new EmployeeServiceImp();
	ICustomerService cusService = new CustomerServiceImp();
	IOrderService orderService = new OrderServiceImpl();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		
		if(url.contains("shipper/home")) {
			getOrderByShipper(req, resp);
		} else if(url.contains("shipper/order")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/shipper/shipper_order.jsp");
			rd.forward(req, resp);
		} else if(url.contains("shipper/updateorder")) {
			getUpdateOrder(req, resp);
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String url = req.getRequestURI();
		
		if(url.contains("shipper/updateinfor")) {
			postUpdateInfo(req, resp);
		} else if(url.contains("shipper/updateorder")) {
		}
	}
	
	protected void getOrderByShipper(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		HttpSession session = req.getSession();
		AccountModels account = (AccountModels) session.getAttribute("account");
		
		EmployeeModels shipper = empService.findShipperByAccountID(account.getAccountID());
		if(shipper != null) {
			List<OrdersModels> listOrders = orderService.findOrderByShipperId(shipper.getEmployeeId());
			
			List<OrdersModels> listOrderDelivered = orderService.getOrderByOrderStatus(shipper.getEmployeeId(), "Đã giao khách hàng");
			
			List<OrdersModels> listOrderDelivering = orderService.getOrderByOrderStatus(shipper.getEmployeeId(), "Đã giao cho shipper");
			System.out.println(listOrderDelivering.size());
			req.setAttribute("shipper", shipper);
			req.setAttribute("username", account.getUsername());
			req.setAttribute("listorder", listOrders);
			req.setAttribute("listorderdelivered", listOrderDelivered);
			req.setAttribute("listorderdelivering", listOrderDelivering);
			RequestDispatcher rd = req.getRequestDispatcher("/views/shipper/shipper_order.jsp");
			rd.forward(req, resp);
		} else {
			
		}
			
	}
	
	protected void postUpdateInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		EmployeeModels shipper = new EmployeeModels();
		
		try {
			// lay du lieu tu jsp bang beanutils
			BeanUtils.populate(shipper, req.getParameterMap());
			empService.updateEmployee(shipper);
			//thông báo kết quả
			req.setAttribute("shipper", shipper);
			req.setAttribute("message","Add successful");
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error","Add fails");
		}
		resp.sendRedirect(req.getContextPath() + "/shipper/home");
	}	
	
	protected void getUpdateOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int orderId = Integer.valueOf(req.getParameter("orderid"));
		OrdersModels order = orderService.findOne(orderId);	
		try {
			order.setOrderStatus("Đã giao khách hàng");
			orderService.update(order);
			req.setAttribute("order", order);
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error","Add fails");
		}
		resp.sendRedirect(req.getContextPath() + "/shipper/home");
	}	
}
