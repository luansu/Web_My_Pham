package orishop.DAO;

import java.util.List;

import orishop.models.CustomerModels;

public interface ICustomerDAO {
	//dinh nghia cac Phuong thuc
	List<CustomerModels> findAll();
	CustomerModels findOne(int id);
}
