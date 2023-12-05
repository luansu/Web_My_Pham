package orishop.DAO;

<<<<<<< HEAD
import java.util.List;

import orishop.models.EmployeeModels;

public interface IEmployeeDAO {
	List<EmployeeModels> findByJob(String job);
	
	List<EmployeeModels> findAvalibleShipper(String area);
=======
import orishop.models.EmployeeModels;

import java.util.List;
public interface IEmployeeDAO {
	public List<EmployeeModels> countOrder();
>>>>>>> main
}
