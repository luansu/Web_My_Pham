package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.CategoryModels;

public class CategoryDAOImp implements ICategoryDAO{
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<CategoryModels> findAll() {
		List<CategoryModels> listCate = new ArrayList<CategoryModels>();
		String sql = "SELECT * FROM Category";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				CategoryModels cate = new CategoryModels();
				cate.setCateID(rs.getInt("categoryID"));
				cate.setCateName(rs.getString("categoryName"));
				cate.setImages(rs.getString("image"));
				listCate.add(cate);
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return listCate;
	}
	
	public float totalRevenue(String categoryID) {
		String sql = "SELECT p.stock*p.UnitPrice as doanhThu FROM PRODUCT p WHERE p.categoryID = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setString(1, categoryID);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt("doanhThu");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
