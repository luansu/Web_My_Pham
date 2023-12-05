package orishop.services;

import orishop.models.CartModels;

public interface ICartService {
	CartModels findCustomerId(int customerId);
	CartModels findCartId(int cartId);
}
