package orishop.services;

import java.util.List;

import orishop.models.RatingModels;

public interface IRatingService {
	List<RatingModels> findAll();
	List<RatingModels> findByProduct(int id);
	List<RatingModels> findAllByUser(int id);
	
	int averageRating();
	int averageRating(int productId);
}
