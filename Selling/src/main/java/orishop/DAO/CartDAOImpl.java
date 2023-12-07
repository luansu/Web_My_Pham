package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import orishop.DAO.DBConnectionSQLServer;
import orishop.DAO.ICartDAO;
import orishop.models.CartModels;

public class CartDAOImpl implements ICartDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public CartModels findCartByCustomerID(int customerID) {

		String sql = "select * from CART where customerId=?";
		CartModels cart = new CartModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, customerID);
			rs = ps.executeQuery();
			while (rs.next()) {
				cart.setCartId(rs.getInt("cartId"));
				cart.setTotalPrice(rs.getFloat("cartId"));
				cart.setCustomerId(rs.getInt("customerId"));

			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cart;
	}
	
	@Override
	public CartModels findCartByCartID(int cartID) {

		String sql = "select * from CART where cartId=?";
		CartModels cart = new CartModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartID);
			rs = ps.executeQuery();
			while (rs.next()) {
				cart.setCartId(rs.getInt("cartId"));
				cart.setTotalPrice(rs.getFloat("cartId"));
				cart.setCustomerId(rs.getInt("customerId"));

			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cart;
	}

	public static void main(String[] args) {
		ICartDAO cartDAO = new CartDAOImpl();
		CartModels list1 = cartDAO.findCartByCustomerID(1);
		System.out.println(list1.getCartId());
	}
}
