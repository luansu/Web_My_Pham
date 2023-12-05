package orishop.services;

import java.util.List;

import orishop.DAO.ICartItemDAO;
import orishop.DAO.Impl.CartItemDAOImpl;
import orishop.models.CartItemModels;

public class CartItemServiceImpl implements ICartItemService{

	// gọi các phương thức trong DAO
	ICartItemDAO cartItemDao = new CartItemDAOImpl();

	@Override
	public List<CartItemModels> find(int cartId) {
		return cartItemDao.find(cartId);
	}

	@Override
	public void insert(CartItemModels model) {
		cartItemDao.insert(model);
	}

	@Override
	public void delete(int cartID, int productID) {
		cartItemDao.delete(cartID, productID);
	}

	@Override
	public void update(CartItemModels model) {
		cartItemDao.update(model);
	}



}
