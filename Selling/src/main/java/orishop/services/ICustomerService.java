package orishop.services;

import java.util.List;

import orishop.models.*;

public interface ICustomerService {
	List<CustomerModels> findAll();
	CustomerModels findOne(int id);
	//CustomerModels findCustomerByCustomerID(int id);
	public CustomerModels findCustomerByAccountID(int accountId);
	List<CustomerModels> getListCustomerByPage(List<CustomerModels> listCus, int start, int end);
	
	CustomerModels editInfor(String customerID);

	void editInfor(CustomerModels model);
	CustomerModels findOne(String parameter);
	List<CustomerModels> findCustomerByCustomerName(String customerName);
}
