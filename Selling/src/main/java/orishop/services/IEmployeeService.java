package orishop.services;

import java.util.List;

import orishop.models.*;

public interface IEmployeeService {
	List<EmployeeModels> findAll();
	List<EmployeeModels> findAllShipper();
	List<EmployeeModels> findAllSeller();
	
	List<EmployeeModels> getListEmpByPage(List<EmployeeModels> listEmp, int start, int end);
	
	EmployeeModels findShipper(int id);
	EmployeeModels findShipper(String name);
}
