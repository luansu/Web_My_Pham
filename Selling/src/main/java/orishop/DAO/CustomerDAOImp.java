package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.*;
public class CustomerDAOImp implements ICustomerDAO{
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<CustomerModels> findAll() {
		List<CustomerModels> listCustomer = new ArrayList<CustomerModels>();
		String sql = "SELECT * FROM CUSTOMER";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				CustomerModels customer = new CustomerModels();
				customer.setCustomerID(rs.getString("customerID"));
				customer.setCustomerName(rs.getString("customerName"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setPoint(rs.getInt("RewardPoints"));
				customer.setAccountID(rs.getString("accountID"));
				listCustomer.add(customer);
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return listCustomer;
	}
	
}
