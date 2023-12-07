package orishop.services;

import java.util.List;

import orishop.DAO.ICartItemDAO;
import orishop.DAO.CartItemDAOImpl;
import orishop.models.CartItemModels;

public class CartItemServiceImpl implements ICartItemService{

	ICartItemDAO cartItemDao = new CartItemDAOImpl();

	@Override
	public List<CartItemModels> findCartItemByCartID(int cartID) {
		return cartItemDao.findCartItemByCartID(cartID);
	}

	@Override
	public void insertCartItem(CartItemModels model) {
		cartItemDao.insertCartItem(model);
	}

	@Override
	public void deleteCartItem(int cartID, int productID) {
		cartItemDao.deleteCartItem(cartID, productID);
	}

	@Override
	public void updateCartItem(CartItemModels model) {
		cartItemDao.updateCartItem(model);
	}



}
