package orishop.services;

import java.util.List;

import orishop.models.CustomerModels;

public interface ICustomerService {
	List<CustomerModels> findAll();
}
