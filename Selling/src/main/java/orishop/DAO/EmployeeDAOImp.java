package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.*;

public class EmployeeDAOImp implements IEmployeeDAO{
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<EmployeeModels> findAll() {
		List<EmployeeModels> listEmp = new ArrayList<EmployeeModels>();
		String sql = "SELECT * FROM Employee";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
                EmployeeModels employee = new EmployeeModels();
                employee.setEmployeeId(rs.getInt("employeeId"));
                employee.setEmployeeName(rs.getString("employeeName"));
                employee.setBirthdate(rs.getDate("birthdate"));
                employee.setGender(rs.getString("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setPhone(rs.getString("phone"));
                employee.setMail(rs.getString("mail"));
                employee.setJob(rs.getString("job"));
                employee.setAccountId(rs.getInt("accountId"));
                employee.setActivityArea(rs.getString("activityArea"));
                employee.setImageURL(rs.getString("imageURL"));

                // Thêm đối tượng Employee vào danh sách
                listEmp.add(employee);
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return listEmp;
	}

	@Override
	public List<EmployeeModels> findAllShipper() {
		List<EmployeeModels> listEmp = new ArrayList<EmployeeModels>();
		String sql = "SELECT * FROM Employee where job='Shipper'";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
                EmployeeModels employee = new EmployeeModels();
                employee.setEmployeeId(rs.getInt("employeeId"));
                employee.setEmployeeName(rs.getString("employeeName"));
                employee.setBirthdate(rs.getDate("birthdate"));
                employee.setGender(rs.getString("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setPhone(rs.getString("phone"));
                employee.setMail(rs.getString("mail"));
                employee.setJob(rs.getString("job"));
                employee.setAccountId(rs.getInt("accountId"));
                employee.setActivityArea(rs.getString("activityArea"));
                employee.setImageURL(rs.getString("imageURL"));

                // Thêm đối tượng Employee vào danh sách
                listEmp.add(employee);
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return listEmp;
	}

	@Override
	public List<EmployeeModels> findAllSeller() {
		List<EmployeeModels> listEmp = new ArrayList<EmployeeModels>();
		String sql = "SELECT * FROM Employee where job='Seller'";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
                EmployeeModels employee = new EmployeeModels();
                employee.setEmployeeId(rs.getInt("employeeId"));
                employee.setEmployeeName(rs.getString("employeeName"));
                employee.setBirthdate(rs.getDate("birthdate"));
                employee.setGender(rs.getString("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setPhone(rs.getString("phone"));
                employee.setMail(rs.getString("mail"));
                employee.setJob(rs.getString("job"));
                employee.setAccountId(rs.getInt("accountId"));
                employee.setActivityArea(rs.getString("activityArea"));
                employee.setImageURL(rs.getString("imageURL"));

                // Thêm đối tượng Employee vào danh sách
                listEmp.add(employee);
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return listEmp;
	}

	@Override
	public EmployeeModels findShipper(int id) {
		String sql = "SELECT * FROM Employee where job='Shipper' and employeeId=?";
        EmployeeModels employee = new EmployeeModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			rs.next();
            employee.setEmployeeId(rs.getInt("employeeId"));
            employee.setEmployeeName(rs.getString("employeeName"));
            employee.setBirthdate(rs.getDate("birthdate"));
            employee.setGender(rs.getString("gender"));
            employee.setAddress(rs.getString("address"));
            employee.setPhone(rs.getString("phone"));
            employee.setMail(rs.getString("mail"));
            employee.setJob(rs.getString("job"));
            employee.setAccountId(rs.getInt("accountId"));
            employee.setActivityArea(rs.getString("activityArea"));
            employee.setImageURL(rs.getString("imageURL"));
		}catch (Exception e){
			e.printStackTrace();
		}
		return employee;
	}

	@Override
	public EmployeeModels findShipper(String name) {
		String sql = "SELECT * FROM Employee where job='Shipper' and employeeName=?";
        EmployeeModels employee = new EmployeeModels();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			rs.next();
            employee.setEmployeeId(rs.getInt("employeeId"));
            employee.setEmployeeName(rs.getString("employeeName"));
            employee.setBirthdate(rs.getDate("birthdate"));
            employee.setGender(rs.getString("gender"));
            employee.setAddress(rs.getString("address"));
            employee.setPhone(rs.getString("phone"));
            employee.setMail(rs.getString("mail"));
            employee.setJob(rs.getString("job"));
            employee.setAccountId(rs.getInt("accountId"));
            employee.setActivityArea(rs.getString("activityArea"));
            employee.setImageURL(rs.getString("imageURL"));
		}catch (Exception e){
			e.printStackTrace();
		}
		return employee;
	}
	
	
	@Override
	public List<EmployeeModels> findSellerBySellerName(String sellerName){
		String sql = "SELECT * FROM EMPLOYEE WHERE job = 'Seller' AND employeeName LIKE '%" + sellerName + "'";
		List<EmployeeModels> listemployee = new ArrayList<EmployeeModels>();
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
			EmployeeModels employee = new EmployeeModels();
            employee.setEmployeeId(rs.getInt("employeeId"));
            employee.setEmployeeName(rs.getString("employeeName"));
            employee.setBirthdate(rs.getDate("birthdate"));
            employee.setGender(rs.getString("gender"));
            employee.setAddress(rs.getString("address"));
            employee.setPhone(rs.getString("phone"));
            employee.setMail(rs.getString("mail"));
            employee.setJob(rs.getString("job"));
            employee.setAccountId(rs.getInt("accountId"));
            employee.setActivityArea(rs.getString("activityArea"));
            employee.setImageURL(rs.getString("imageURL"));
            
            listemployee.add(employee);
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return listemployee;
	}
	
	

}
