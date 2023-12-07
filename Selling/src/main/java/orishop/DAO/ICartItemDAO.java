package orishop.DAO;

import java.util.List;
import orishop.models.CartItemModels;

public interface ICartItemDAO {
	List<CartItemModels> findCartItemByCartID(int cartID);
	void insertCartItem(CartItemModels model);
	void deleteCartItem(int cartID, int productID);
	void updateCartItem(CartItemModels model);
}
