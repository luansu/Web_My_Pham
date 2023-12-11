package orishop.DAO;

import java.util.List;

import orishop.models.ProductModels;

public interface IProductDAO {
	List<ProductModels> findAllProduct();
	
	List<ProductModels> findByCategory(int cid);
	
	List<ProductModels> findProduct(String productName);
	
	List<ProductModels> filterProductDescByPrice();
	
	List<ProductModels> filterProductAscByPrice();
	
	List<ProductModels> findTopProduct(int amount);
	
	void insertProduct(ProductModels product);
	//void addProduct(ProductModels model);
	
	ProductModels findOne(int productId);
	
	ProductModels findLast();
	
	void updateProduct(ProductModels product);
	
	void deleteProduct(ProductModels product);
}
