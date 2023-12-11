package orishop.controllers.user;

import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import orishop.models.AccountModels;
import orishop.models.CartItemModels;
import orishop.models.CartModels;
import orishop.models.CustomerModels;
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

@WebServlet(urlPatterns = { "/user/product/insertCartItem", "/user/findCartByCartID", "/user/findCartItem",
		"/user/insertCartItem", "/user/updateCartItem", "/user/deleteCartItem", "/user/countCartItem" })

public class UserCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ICartService cartService = new CartServiceImpl();
	ICartItemService cartItemService = new CartItemServiceImpl();
	ICustomerService CustomerSerivce = new CustomerServiceImp();
	IEmployeeService empService = new EmployeeServiceImp();

	IProductService productService = new ProductServiceImp();
	ICategoryService categoryService = new CategoryServiceImp();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();

		if (url.contains("user/findCartByCartID")) {
			listCartItemByPage(req, resp);
		} else if (url.contains("user/deleteCartItem")) {
			deleteCartItemByPage(req, resp);
		} else if (url.contains("user/updateCartItem")) {
			updateCartItem(req, resp);
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("insertCartItem")) {
			insertCartItem(req, resp);
		}
	}

	private void updateCartItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int cartId = Integer.parseInt(req.getParameter("cartID"));
		int productId = Integer.parseInt(req.getParameter("productID"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		float totalPrice = Float.parseFloat(req.getParameter("totalPrice"));

		CartItemModels cartItem = new CartItemModels();
		cartItem.setCartID(cartId);
		cartItem.setProductID(productId);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(totalPrice);

		cartItemService.updateCartItem(cartItem);

		resp.sendRedirect(req.getContextPath() + "/user/findCartByCartID");
	}

	private void insertCartItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();
		int cartId = ((int) session.getAttribute("cartID"));
		int productId = ((int) session.getAttribute("productID"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));

		CartItemModels model = cartItemService.findCartItemByProductID(cartId, productId);
		if (model.getCartID() != cartId) {
			CartItemModels cartItem = new CartItemModels();
			cartItem.setCartID(cartId);
			cartItem.setProductID(productId);
			cartItem.setQuantity(quantity);
			cartItemService.insertCartItem(cartItem);
		} else {
			CartItemModels cartItem = new CartItemModels();
			cartItem.setCartID(cartId);
			cartItem.setProductID(productId);
			cartItem.setQuantity(quantity + model.getQuantity());
			cartItemService.updateCartItem(cartItem);
		}
		resp.sendRedirect(req.getContextPath() + "/user/findCartByCartID");
	}

	private void listCartItemByPage(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String url = req.getRequestURI().toString();

		if (url.contains("user/findCartByCartID")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			HttpSession session = req.getSession();
			AccountModels user = (AccountModels) session.getAttribute("account");
			if (user != null) {
				CustomerModels cus = CustomerSerivce.findCustomerByAccountID(user.getAccountID());
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

			CartModels cart = cartService.findCartByCartID((int) session.getAttribute("cartID"));
			req.setAttribute("cart", cart);
			List<CartItemModels> listCartItem = cartItemService.findCartItemByCartID(cart.getCartId());
			req.setAttribute("listCartItem", listCartItem);

			int pagesize = 4;
			int size = listCartItem.size();
			int num = (size % pagesize == 0 ? (size / pagesize) : (size / pagesize + 1));
			int page, numberpage = pagesize;
			String xpage = req.getParameter("page");
			if (xpage == null) {
				page = 1;
			} else {
				page = Integer.parseInt(xpage);
			}
			int start, end;
			start = (page - 1) * numberpage;
			end = Math.min(page * numberpage, size);

			List<CartItemModels> list = cartItemService.getCartItemByPage(listCartItem, start, end);
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			req.setAttribute("num", num);
			req.setAttribute("count", listCartItem.size());

			float totalPriceCart = cartService.totalPriceCart((int) session.getAttribute("cartID"));
			session.setAttribute("totalPriceCart", totalPriceCart);
			req.setAttribute("totalPriceCart", (float) session.getAttribute("totalPriceCart"));

			req.getRequestDispatcher("/views/user/inforuser_cart/cart.jsp").forward(req, resp);
		}
	}
	private void deleteCartItemByPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int cartId = Integer.parseInt(req.getParameter("cartID"));
		int productId = Integer.parseInt(req.getParameter("productID"));

		cartItemService.deleteCartItem(cartId, productId);

		req.setAttribute("message", "Đã xóa thành công");

		resp.sendRedirect(req.getContextPath() + "/user/findCartByCartID");
	}
}
