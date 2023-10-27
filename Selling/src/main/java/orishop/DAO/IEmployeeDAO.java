package orishop.DAO;

import java.util.List;

import orishop.models.EmployeeModels;

public interface IEmployeeDAO {
	List<EmployeeModels> findByJob(String job);
}
