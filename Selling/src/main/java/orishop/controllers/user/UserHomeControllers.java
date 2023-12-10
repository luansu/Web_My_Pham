package orishop.controllers.user;

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
import orishop.models.CartModels;
import orishop.models.CategoryModels;
import orishop.models.CustomerModels;
import orishop.models.EmployeeModels;
import orishop.services.CartServiceImpl;
import orishop.services.CategoryServiceImp;
import orishop.services.CustomerServiceImp;
import orishop.services.EmployeeServiceImp;
import orishop.services.ICartService;
import orishop.services.ICategoryService;
import orishop.services.ICustomerService;
import orishop.services.IEmployeeService;

@WebServlet(urlPatterns = {"/user/home"})

public class UserHomeControllers extends HttpServlet {
	ICategoryService cateService = new CategoryServiceImp();
	IEmployeeService empService = new EmployeeServiceImp();
	ICustomerService cusService = new CustomerServiceImp();
	ICartService cartService = new CartServiceImpl();
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url = req.getRequestURI();
		if(url.contains("user/home")) {
			HttpSession session = req.getSession();
			AccountModels user = (AccountModels) session.getAttribute("account");
			CustomerModels cus = cusService.findCustomerByAccountID(user.getAccountID());
			CartModels cart1 = cartService.findCartByCustomerID(cus.getCustomerId());
			
			req.setAttribute("username", user.getUsername());
			req.setAttribute("accountID", user.getAccountID());
			req.setAttribute("customerID", cus.getCustomerId());
			req.setAttribute("cartID", cart1.getCartId());
			
			req.getRequestDispatcher("/views/user/home.jsp").forward(req, resp);
		
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
	}
	
}
	
