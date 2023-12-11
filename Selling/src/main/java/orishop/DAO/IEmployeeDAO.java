package orishop.DAO;

import java.util.List;

import orishop.models.*;

public interface IEmployeeDAO {
	List<EmployeeModels> findAll();
	List<EmployeeModels> findAllShipper();
	List<EmployeeModels> findAllSeller();
	
	EmployeeModels findShipper(int id);
	EmployeeModels findShipper(String name);
<<<<<<< HEAD
	EmployeeModels findShipperByAccountID(int id);
	
	EmployeeModels findSeller(int id);
	void updateEmployee(EmployeeModels employee);
=======
	List<EmployeeModels> findSellerBySellerName(String sellerName);
>>>>>>> e1a1afb88f3ad3cff8c9aec80065e1ff65f8fe0f
}
