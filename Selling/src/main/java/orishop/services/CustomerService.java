package orishop.services;

import java.util.List;

import orishop.DAO.CustomerDAOImp;
import orishop.DAO.ICustomerDAO;
import orishop.models.CustomerModels;

public class CustomerService implements ICustomerService{
	ICustomerDAO cusDAO = new CustomerDAOImp();
	public List<CustomerModels> findAll() {
		return cusDAO.findAll();
	}
	
}
