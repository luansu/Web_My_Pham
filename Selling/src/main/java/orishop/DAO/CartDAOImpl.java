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
	public CartModels findCustomerId(int customerId) {

		String sql = "select * from CART where customerId=?";
		CartModels cart = new CartModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, customerId);
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
	public CartModels findCartId(int cartId) {

		String sql = "select * from CART where cartId=?";
		CartModels cart = new CartModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cartId);
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
		CartModels list1 = cartDAO.findCustomerId(1);
		//UserModel list1 = userDAO.findOne("b");
		//boolean list1 = userDAO.checkExistUsername("b");
		//boolean list1 = userDAO.checkExistEmail("a");
		//UserModel model = new UserModel("a","abcde","a","a", 1 ,1,"123456");userDAO.updatestatus(model);
		//userDAO.delete(10);
		System.out.println(list1.getCartId());
	}
}
