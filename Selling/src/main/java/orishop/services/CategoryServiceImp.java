package orishop.services;

import java.util.List;

import orishop.DAO.CategoryDAOImp;
import orishop.DAO.ICategoryDAO;
import orishop.models.CategoryModels;

public class CategoryServiceImp implements ICategoryService{
	ICategoryDAO cateDAO = new CategoryDAOImp();
	public List<CategoryModels> findAll() {
		return cateDAO.findAll();
	}
	
}
