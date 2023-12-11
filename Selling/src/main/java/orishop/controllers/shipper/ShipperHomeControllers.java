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

@WebServlet(urlPatterns = {"/shipper/home", "/shipper/order"})

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
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
	}
	
	protected void getOrderByShipper(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

		HttpSession session = req.getSession();
//		AccountModels account = (AccountModels) session.getAttribute("account");
//		
//		EmployeeModels shipper = empService.findShipperByAccountID(account.getAccountID());
		EmployeeModels shipper = empService.findShipperByAccountID(2);
		if(shipper != null) {
			List<OrdersModels> listOrders = orderService.findOrderByShipperId(shipper.getEmployeeId());
			
			List<OrdersModels> listOrderDelivered = orderService.getOrderByOrderStatus("Đã giao");
			
			List<OrdersModels> listOrderDelivering = orderService.getOrderByOrderStatus("Đang giao");
			
			req.setAttribute("shipper", shipper);
			req.setAttribute("listorder", listOrders);
			req.setAttribute("listorderdelivered", listOrderDelivered);
			req.setAttribute("listorderdelivering", listOrderDelivering);
			RequestDispatcher rd = req.getRequestDispatcher("/views/shipper/shipper_order.jsp");
			rd.forward(req, resp);
		} else {
			
		}
			
	}

}
