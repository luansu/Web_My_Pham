package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDAOImp implements IProductDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public float totalRevenue(String productID) {
		String sql = "SELECT p.stock*p.UnitPrice as doanhThu FROM PRODUCT p WHERE p.productID = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setString(1, productID);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt("doanhThu");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public float totalRevenue() {
		String sql = "SELECT sum(p.stock*p.UnitPrice) as doanhThu FROM PRODUCT p";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt("doanhThu");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public static void main(String[] args) {
		IProductDAO pro = new ProductDAOImp();
		System.out.println(pro.totalRevenue());
	}
}
