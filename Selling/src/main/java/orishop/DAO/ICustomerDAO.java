package orishop.DAO;

import java.util.List;

<<<<<<< HEAD
import orishop.models.*;
public interface ICustomerDAO {
	List<CustomerModels> findAll();
=======
import orishop.models.CustomerModels;

public interface ICustomerDAO {
	//dinh nghia cac Phuong thuc
	List<CustomerModels> findAll();
	CustomerModels findOne(int id);
>>>>>>> main
}
