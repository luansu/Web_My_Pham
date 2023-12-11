package orishop.services;

import java.util.List;

import orishop.models.*;

public interface IEmployeeService {
	List<EmployeeModels> findAll();
	List<EmployeeModels> findAllShipper();
	List<EmployeeModels> findAllSeller();
	
	List<EmployeeModels> getListEmpByPage(List<EmployeeModels> listEmp, int start, int end);
	
	EmployeeModels findShipper(int id);
	List<EmployeeModels> findShipper(String name);
	EmployeeModels findShipperByAccountID(int id);
	
	EmployeeModels findSeller(int id);
	void updateEmployee(EmployeeModels employee);
	List<EmployeeModels> findSellerBySellerName(String sellerName);
}
