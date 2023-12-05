package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.EmployeeModels;

public class EmployeeDAOImp implements IEmployeeDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<EmployeeModels> findByJob(String job) {
		List<EmployeeModels> listEmp = new ArrayList<EmployeeModels>();
		String sql = "SELECT * FROM EMPLOYEE emp, JOB j Where emp.JobID = j.JobID and j.JobTitle = ?";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setString(1, job);
			rs = ps.executeQuery();
			while (rs.next()) {
				EmployeeModels emp = new EmployeeModels();
				emp.setEmployeeID(rs.getString("EmployeeID"));
				emp.setEmployeeName(rs.getString("EmployeeName"));
				emp.setBirthDate(rs.getDate("BirthDate"));
				emp.setGender(rs.getString("Gender"));
				emp.setAddress(rs.getString("Address"));
				emp.setPhone(rs.getString("Phone"));
				emp.setJobID(rs.getString("JobID"));
				emp.setAccountID(rs.getString("AccountID"));
				emp.setImageURL(rs.getString("ImageURL"));
				listEmp.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listEmp;
	}

	public List<EmployeeModels> findAvalibleShipper(String area) {
		List<EmployeeModels> listEmp = new ArrayList<EmployeeModels>();
		String sql = "SELECT * FROM EMPLOYEE emp, JOB j Where emp.JobID = j.JobID and j.JobTitle like N'%hipper%' and emp.Address like N'%?'";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setString(1, area);
			rs = ps.executeQuery();
			while (rs.next()) {
				EmployeeModels emp = new EmployeeModels();
				emp.setEmployeeID(rs.getString("EmployeeID"));
				emp.setEmployeeName(rs.getString("EmployeeName"));
				emp.setBirthDate(rs.getDate("BirthDate"));
				emp.setGender(rs.getString("Gender"));
				emp.setAddress(rs.getString("Address"));
				emp.setPhone(rs.getString("Phone"));
				emp.setJobID(rs.getString("JobID"));
				emp.setAccountID(rs.getString("AccountID"));
				emp.setImageURL(rs.getString("ImageURL"));
				listEmp.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listEmp;
	}

	 public static void main(String[] args) { 
		 try { 
			 new DBConnectionSQLServer();
			 IEmployeeDAO d = new EmployeeDAOImp(); 
			 List<EmployeeModels> listEmp = d.findByJob("Shipper"); 
			 for (EmployeeModels i : listEmp) {
				 System.out.println(i.getEmployeeID()); 
				 } 
		 } catch (Exception e) {
			 e.printStackTrace(); 
			 } 
	}
	 
}
