package orishop.services;

import orishop.DAO.IProductDAO;
import orishop.DAO.ProductDAOImp;

public class ProductServiceImp implements IProductService {
	IProductDAO proDAO = new ProductDAOImp();
	public float totalRevenue(String productID) {
		return proDAO.totalRevenue(productID);
	}
	
	public float totalRevenue() {
		return proDAO.totalRevenue();
	}
}
