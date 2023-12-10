package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.DAO.DBConnectionSQLServer;
import orishop.DAO.ICartDAO;
import orishop.DAO.ICartItemDAO;
import orishop.models.CartItemModels;
import orishop.models.CartModels;
import orishop.models.ProductModels;

public class CartItemDAOImpl implements ICartItemDAO {
	
	ICartDAO cartDAO = new CartDAOImpl();
	IProductDAO productDAO = new ProductDAOImp();
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<CartItemModels> findCartItemByCartID(int cartID) {
		List<CartItemModels> listCartItem = new ArrayList<CartItemModels>();
		String sql = "Select * from Cart_Item where cartId = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartID);
			rs = ps.executeQuery();
			while (rs.next()) {
				CartModels model = cartDAO.findCartByCartID(rs.getInt("cartId"));
				ProductModels product = productDAO.findOne(rs.getInt("productId"));
				CartItemModels cartItem = new CartItemModels();
				cartItem.setCartID(model.getCartId());
				cartItem.setProductID(product.getProductId());
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setTotalPrice(rs.getFloat("totalPrice"));
				cartItem.setProduct(product);
				
				listCartItem.add(cartItem);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return listCartItem;
	}
	
	@Override
	public CartItemModels findCartItemByProductID(int cartID, int productID) {
		CartItemModels cartItem = new CartItemModels();
		String sql = "Select * from Cart_Item where cartId = ? and productId = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartID);
			ps.setInt(2, productID);
			rs = ps.executeQuery();
			while (rs.next()) {
				CartModels model = cartDAO.findCartByCartID(rs.getInt("cartId"));
				ProductModels product = productDAO.findOne(rs.getInt("productId"));
				cartItem.setCartID(model.getCartId());
				cartItem.setProductID(product.getProductId());
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setTotalPrice(rs.getFloat("totalPrice"));
				cartItem.setProduct(product);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cartItem;
	}

	@Override
	public void insertCartItem(CartItemModels model) {
		String sql = "Insert into Cart_Item(cartId, productId, quantity, totalPrice) values (?,?,?,?)";

		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, model.getCartID());
			ps.setInt(2, model.getProductID());
			ps.setInt(3, model .getQuantity());
			ps.setFloat(4, model.getTotalPrice());

			ps.executeUpdate();

			conn.close();

		} catch (

		Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteCartItem(int cartID, int productID) {
		String sql = "delete from Cart_Item where cartId = ? and productId = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartID);
			ps.setInt(2, productID);
			ps.executeUpdate();

			conn.close();

		} catch (

		Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateCartItem(CartItemModels model) {
		String sql = "update Cart_Item set quantity = ?, totalPrice = ? where cartId =? and productId = ?";
		try {

			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, model.getQuantity());
			ps.setFloat(2, model.getTotalPrice());
			ps.setInt(3, model.getCartID());
			ps.setInt(4, model.getProductID());

			ps.executeUpdate();

			conn.close();

		} catch (

		Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public int countCartItem(int cartID) {
		CartItemModels cartItem = new CartItemModels();
		String sql = "select cartId, count(*) as count from Cart_Item group by cartId having cartId = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartID);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				CartModels model = cartDAO.findCartByCartID(rs.getInt("cartId"));
				cartItem.setCartID(model.getCartId());
				cartItem.setCount(rs.getInt("count"));
			}
			conn.close();

		} catch (

		Exception e) {
			e.printStackTrace();
		}
		return cartItem.getCount();
	}
	
	
	public static void main(String[] args) {
		ICartItemDAO cartItemDAO = new CartItemDAOImpl();
		List<CartItemModels> list1 = cartItemDAO.findCartItemByCartID(10);
		System.out.println(cartItemDAO.countCartItem(99));
	}
	
}