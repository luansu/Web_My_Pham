package orishop.DAO;

import java.util.List;

import orishop.models.RatingModels;

public interface IRatingDAO {
	List<RatingModels> findAll();
	List<RatingModels> findByProduct(int id);
	List<RatingModels> findAllByUser(int id);
}
