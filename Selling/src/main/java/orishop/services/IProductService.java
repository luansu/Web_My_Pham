package orishop.services;

import java.util.List;

import orishop.models.EmployeeModels;
import orishop.models.ProductModels;

public interface IProductService {
List<ProductModels> findAllProduct();
	
	List<ProductModels> findByCategory(int cid);
	
	List<ProductModels> findProduct(String productName, String categoryName);
	
	List<ProductModels> filterProductDescByPrice();
	
	List<ProductModels> filterProductAscByPrice();
	
	List<ProductModels> findTopProduct(int amount);
	
	List<ProductModels> getListProductByPage(List<ProductModels> listPro, int start, int end);
	
	void insertProduct(ProductModels product);
	//void addProduct(ProductModels model);
	
	ProductModels findOne(int productId);
	
	ProductModels findLast();
	
	void updateProduct(ProductModels product);
	
	void deleteProduct(ProductModels product);
}
