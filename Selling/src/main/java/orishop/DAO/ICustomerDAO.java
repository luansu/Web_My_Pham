package orishop.DAO;

import java.util.List;

import orishop.models.*;

public interface ICustomerDAO {
	List<CustomerModels> findAll();
	
	CustomerModels findOne(int id);
	// CustomerModels findCustomerByCustomerID(int id);
	public CustomerModels findCustomerByAccountID(int accountId);

	void editInfor(CustomerModels model);
}