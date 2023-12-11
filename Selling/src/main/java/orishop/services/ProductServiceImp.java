package orishop.services;

import java.util.ArrayList;
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
	public List<ProductModels> findProduct(String productName) {
		return proDAO.findProduct(productName);
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
		
	public List<ProductModels> getListProductByPage(List<ProductModels> listPro, int start, int end) {
		List<ProductModels> listProPage = new ArrayList<>();
		
		for (int i = start; i < end; i++) {
			listProPage.add(listPro.get(i));
		}
		return listProPage;
	}
	
	@Override
	public void insertProduct(ProductModels product) {
		proDAO.insertProduct(product);
		
	}
/*	Thiên Thanh
	@Override
	public void addProduct(ProductModels model) {
		proDao.addProduct(model);
	}
*/
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
		ProductModels newproduct = proDAO.findOne(product.getProductId());
		newproduct.setProductName(product.getProductName());
		newproduct.setDescription(product.getDescription());
		newproduct.setStock(product.getStock());
		newproduct.setAmount(product.getAmount());
		newproduct.setPrice(product.getPrice());
		newproduct.setCategoryId(product.getCategoryId());
		newproduct.setImageURL(product.getImageURL());
		proDAO.updateProduct(product);
		
	}

	@Override
	public void deleteProduct(ProductModels product) {
		proDAO.deleteProduct(product);
		
	}

	@Override
	public ProductModels findOne(String parameter) {
		// TODO Auto-generated method stub
		return null;
	}

}
