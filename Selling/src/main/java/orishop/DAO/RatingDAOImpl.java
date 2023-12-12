package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.ProductModels;
import orishop.models.RatingModels;

public class RatingDAOImpl implements IRatingDAO{

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<RatingModels> findAll() {
		List<RatingModels> listRating = new ArrayList<RatingModels>();

		try {

			String query = "select * from RATING";
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				RatingModels rating = new RatingModels();
				rating.setRatingId(rs.getInt(1));
				rating.setProductId(rs.getInt(2));
				rating.setCustomerId(rs.getInt(3));
				rating.setRating(rs.getInt(4));
				rating.setReview(rs.getString(5));
				rating.setReviewDate(rs.getDate(6));
				listRating.add(rating);
			}
			
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return listRating;
	}

	@Override
	public List<RatingModels> findByProduct(int id) {
		List<RatingModels> listRating = new ArrayList<RatingModels>();

		try {

			String query = "select * from RATING where productId = ?";
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();

			while (rs.next()) {
				RatingModels rating = new RatingModels();
				rating.setRatingId(rs.getInt(1));
				rating.setProductId(rs.getInt(2));
				rating.setCustomerId(rs.getInt(3));
				rating.setRating(rs.getInt(4));
				rating.setReview(rs.getString(5));
				rating.setReviewDate(rs.getDate(6));
				listRating.add(rating);
			}
			
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return listRating;
	}

	@Override
	public List<RatingModels> findAllByUser(int id) {
		List<RatingModels> listRating = new ArrayList<RatingModels>();

		try {

			String query = "select * from RATING customerId=?";
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				RatingModels rating = new RatingModels();
				rating.setRatingId(rs.getInt(1));
				rating.setProductId(rs.getInt(2));
				rating.setCustomerId(rs.getInt(3));
				rating.setRating(rs.getInt(4));
				rating.setReview(rs.getString(5));
				rating.setReviewDate(rs.getDate(6));
				listRating.add(rating);
			}
			
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return listRating;
	}

}
