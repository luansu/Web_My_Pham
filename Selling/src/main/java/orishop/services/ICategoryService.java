package orishop.services;

import java.util.List;

import orishop.models.CategoryModels;

public interface ICategoryService {
	List<CategoryModels> findAll();
}
