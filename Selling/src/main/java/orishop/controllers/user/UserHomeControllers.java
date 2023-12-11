package orishop.controllers.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import orishop.models.AccountModels;
import orishop.models.CartModels;
import orishop.models.CategoryModels;
import orishop.models.CustomerModels;
import orishop.models.ProductModels;
import orishop.services.CartItemServiceImpl;
import orishop.services.CartServiceImpl;
import orishop.services.CategoryServiceImp;
import orishop.services.CustomerServiceImp;
import orishop.services.EmployeeServiceImp;
import orishop.services.ICartItemService;
import orishop.services.ICartService;
import orishop.services.ICategoryService;
import orishop.services.ICustomerService;
import orishop.services.IEmployeeService;
import orishop.services.IProductService;
import orishop.services.ProductServiceImp;

@WebServlet(urlPatterns = { "/user/home" })

public class UserHomeControllers extends HttpServlet {

	IProductService productService = new ProductServiceImp();
	ICategoryService categoryService = new CategoryServiceImp();
	ICategoryService cateService = new CategoryServiceImp();
	IEmployeeService empService = new EmployeeServiceImp();
	ICustomerService cusService = new CustomerServiceImp();
	ICartService cartService = new CartServiceImpl();
	ICartItemService cartItemService = new CartItemServiceImpl();
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if (url.contains("user/home")) {

			getHome(req, resp);
		}
	}

	private void getHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ProductModels> listProduct = productService.findAllProduct();
		List<CategoryModels> listCate = categoryService.findAllCategory();
		ProductModels pro = productService.findLast();

		req.setAttribute("list", listProduct);
		req.setAttribute("listC", listCate);

		HttpSession session = req.getSession();
		AccountModels user = (AccountModels) session.getAttribute("account");
		if (user != null) {
			CustomerModels cus = cusService.findCustomerByAccountID(user.getAccountID());
			CartModels cart1 = cartService.findCartByCustomerID(cus.getCustomerId());

			req.setAttribute("username", user.getUsername());
			req.setAttribute("accountID", user.getAccountID());
			req.setAttribute("customerID", cus.getCustomerId());

			session = req.getSession(true);
			session.setAttribute("cartID", cart1.getCartId());
			req.setAttribute("cartID", (int) session.getAttribute("cartID"));

			int countCartItem = cartItemService.countCartItem((int) session.getAttribute("cartID"));
			session.setAttribute("countCartItem", countCartItem);
			req.setAttribute("countCartItem", (int) session.getAttribute("countCartItem"));
		}

		resp.sendRedirect(req.getContextPath() + "/user/product/listProduct");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
