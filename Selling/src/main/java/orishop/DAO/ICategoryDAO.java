package orishop.DAO;

import java.util.List;

import orishop.models.CategoryModels;

public interface ICategoryDAO {
	List<CategoryModels> findAll();
	
	float totalRevenue(String categoryID);
}
