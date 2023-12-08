package orishop.services;

import java.util.List;

import orishop.DAO.IProductDAO;
import orishop.DAO.ProductDAOImp;
import orishop.models.ProductModels;

public class ProductServiceImp implements IProductService {

	IProductDAO proDAO = new ProductDAOImp();
	@Override
	public List<ProductModels> findAllProduct() {
		return proDAO.findAllProduct();
	}

	@Override
	public List<ProductModels> findByCategory(int cid) {
		return proDAO.findByCategory(cid);
	}

	@Override
	public List<ProductModels> findProduct(String productName, String categoryName) {
		return proDAO.findProduct(productName, categoryName);
	}

	@Override
	public List<ProductModels> filterProductDescByPrice() {
		return proDAO.filterProductDescByPrice();
	}

	@Override
	public List<ProductModels> filterProductAscByPrice() {
		return proDAO.filterProductAscByPrice();
	}

	@Override
	public List<ProductModels> findTopProduct(int amount) {
		return proDAO.findTopProduct(amount);
	}

	@Override
	public void insertProduct(ProductModels product) {
		proDAO.insertProduct(product);
		
	}

	@Override
	public ProductModels findOne(int productId) {
		return proDAO.findOne(productId);
	}

	@Override
	public ProductModels findLast() {
		return proDAO.findLast();
	}

	@Override
	public void updateProduct(ProductModels product) {
		ProductModels newProduct = proDAO.findOne(product.getCategoryId());
		
		newProduct.setProductName(product.getProductName());
		newProduct.setDescription(product.getDescription());
		newProduct.setStock(product.getStock());
		
		proDAO.updateProduct(product);
		
	}

	@Override
	public void deleteProduct(ProductModels product) {
		proDAO.deleteProduct(product);
		
	}

}
