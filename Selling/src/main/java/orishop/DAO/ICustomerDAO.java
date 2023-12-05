package orishop.DAO;

import java.util.List;

import orishop.models.*;
public interface ICustomerDAO {
	List<CustomerModels> findAll();
}
