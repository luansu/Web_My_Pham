package orishop.services;

import java.util.List;

import orishop.models.*;

public interface ICustomerService {
	List<CustomerModels> findAll();
	CustomerModels findOne(int id);
	
	List<CustomerModels> getListCustomerByPage(List<CustomerModels> listCus, int start, int end);
	
}
