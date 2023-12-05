package orishop.services;


import orishop.DAO.ICartDAO;
import orishop.DAO.Impl.CartDAOImpl;
import orishop.models.CartModels;

public class CartServiceImpl implements ICartService{
	ICartDAO cartDAO = new CartDAOImpl();
	
	@Override
	public CartModels findCartId(int cartId) {
		return cartDAO.findCartId(cartId);
	}

	@Override
	public CartModels findCustomerId(int customerId) {
		return cartDAO.findCustomerId(customerId);
	}
}
