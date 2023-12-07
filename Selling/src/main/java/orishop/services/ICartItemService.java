package orishop.services;

import java.util.List;

import orishop.models.CartItemModels;

public interface ICartItemService {
	List<CartItemModels> findByCartID(int cartId);
	void insert(CartItemModels model);
	void delete(int cartID, int productID);
	void update(CartItemModels model);
}
