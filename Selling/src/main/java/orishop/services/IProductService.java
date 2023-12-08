package orishop.services;

import java.util.List;

import orishop.models.ProductModels;

public interface IProductService {
List<ProductModels> findAllProduct();
	
	List<ProductModels> findByCategory(int cid);
	
	List<ProductModels> findProduct(String productName, String categoryName);
	
	List<ProductModels> filterProductDescByPrice();
	
	List<ProductModels> filterProductAscByPrice();
	
	List<ProductModels> findTopProduct(int amount);
	
	void insertProduct(ProductModels product);
	
	ProductModels findOne(int productId);
	
	ProductModels findLast();
	
	void updateProduct(ProductModels product);
	
	void deleteProduct(ProductModels product);
}
