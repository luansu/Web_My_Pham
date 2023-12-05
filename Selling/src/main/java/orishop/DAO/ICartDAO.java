package orishop.DAO;

import orishop.models.CartModels;

public interface ICartDAO {
	CartModels findCartId(int customerId);
	CartModels findCustomerId(int cartId);
}
