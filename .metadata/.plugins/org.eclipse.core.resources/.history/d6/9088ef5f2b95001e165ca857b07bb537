package orishop.controllers;

import java.io.IOException;


import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import orishop.models.CartItemModels;
import orishop.models.CartModels;
import orishop.services.CartItemServiceImpl;
import orishop.services.CartServiceImpl;
import orishop.services.ICartItemService;
import orishop.services.ICartService;
@WebServlet(urlPatterns = { "/findCartbyCartId", "/findCartItem", "/insertCartItem", "/updateCartItem", "/deleteCartItem"})

public class CartController extends HttpServlet  {
private static final long serialVersionUID = 1L;
	
	ICartService cartService = new CartServiceImpl();
	ICartItemService cartItemService = new CartItemServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("findCartbyCardID")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			String cartId = req.getParameter("cartId");

			CartModels cart = cartService.findCartByCartID(Integer.parseInt(cartId));
			req.setAttribute("cart", cart);

			List<CartItemModels> listCartItem = cartItemService.findCartItemByCartID(Integer.parseInt(cartId));
			req.setAttribute("listCartItem", listCartItem);

			req.getRequestDispatcher("/views/user/cart.jsp").forward(req, resp);
		} 
		
		/*
		else if (url.contains("insertCartItem")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/cart.jsp");
			rd.forward(req, resp);
		}
		else if (url.contains("updateCartItem")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			// nhận dữ liệu từ view
			int cartId = Integer.parseInt(req.getParameter("cartId"));
			int productId = Integer.parseInt(req.getParameter("productId"));

			// gọi phương thức finOne trong service
			CartItemModels model = cartItemService.findOne(cartId,productId);

			// đẩy dữ liệu ra view
			req.setAttribute("cateItem", model);

			RequestDispatcher rd = req.getRequestDispatcher("/views/user/cart.jsp");
			rd.forward(req, resp);
		}
		*/
		
		// viết trigger thay đổi cart trong csdl
		else if (url.contains("deleteCartItem")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			int cartId = Integer.parseInt(req.getParameter("cartId"));
			int productId = Integer.parseInt(req.getParameter("productId"));

			cartItemService.deleteCartItem(cartId, productId);

			req.setAttribute("message", "Đã xóa thành công");

			RequestDispatcher rd = req.getRequestDispatcher("/views/user/cart.jsp");
			rd.forward(req, resp);
		}
		
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("insertCartItem")) {
			insertCartItem(req, resp);
		} else if (url.contains("updateCartItem")) {
			updateCartItem(req, resp);
		}
	}
	private void updateCartItem(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int pruductId = Integer.parseInt(req.getParameter("productId"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		float totalPrice = Float.parseFloat(req.getParameter("totalPrice"));

		CartItemModels cartItem = new CartItemModels();
		cartItem.setCartID(cartId);
		cartItem.setProductID(pruductId);;
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(totalPrice);

		cartItemService.updateCartItem(cartItem);
		resp.sendRedirect(req.getContextPath() + "/findCartItem");

	}

	private void insertCartItem(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int pruductId = Integer.parseInt(req.getParameter("productId"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		float totalPrice = Float.parseFloat(req.getParameter("totalPrice"));

		CartItemModels cartItem = new CartItemModels();
		cartItem.setCartID(cartId);
		cartItem.setProductID(pruductId);;
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(totalPrice);
		
		cartItemService.insertCartItem(cartItem);
	}
}




