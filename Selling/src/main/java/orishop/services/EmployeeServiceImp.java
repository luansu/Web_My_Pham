package orishop.services;

import java.util.ArrayList;
import java.util.List;

import orishop.DAO.*;
import orishop.models.*;

public class EmployeeServiceImp implements IEmployeeService{
	IEmployeeDAO empDAO = new EmployeeDAOImp();
	public List<EmployeeModels> findAll() {
		return empDAO.findAll();
	}
	@Override
	public List<EmployeeModels> findAllShipper() {
		return empDAO.findAllShipper();
	}
	@Override
	public List<EmployeeModels> findAllSeller() {
		return empDAO.findAllSeller();
	}
	@Override
	public List<EmployeeModels> getListEmpByPage(List<EmployeeModels> listEmp, int start, int end) {
		List<EmployeeModels> listEmpPage = new ArrayList<>();
		
		for (int i = start; i < end; i++) {
			listEmpPage.add(listEmp.get(i));
		}
		return listEmpPage;
	}
	@Override
	public EmployeeModels findShipper(int id) {
		return empDAO.findShipper(id);
	}
	@Override
	public EmployeeModels findShipper(String name) {
		return empDAO.findShipper(name);
	}
	@Override
	public List<EmployeeModels> findSellerBySellerName(String sellerName){
		return empDAO.findSellerBySellerName(sellerName);
	}
<<<<<<< HEAD
	@Override
	public EmployeeModels findSeller(int id) {
		return empDAO.findSeller(id);
	}
	@Override
	public void updateEmployee(EmployeeModels employee) {
		empDAO.updateEmployee(employee);
	}
	
=======
>>>>>>> e1a1afb88f3ad3cff8c9aec80065e1ff65f8fe0f
	
}
