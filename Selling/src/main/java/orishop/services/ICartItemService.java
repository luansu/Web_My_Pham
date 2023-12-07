package orishop.services;

import java.util.List;

import orishop.models.CartItemModels;

public interface ICartItemService {
	List<CartItemModels> findCartItemByCartID(int cartId);
	void insertCartItem(CartItemModels model);
	void deleteCartItem(int cartID, int productID);
	void updateCartItem(CartItemModels model);
}
