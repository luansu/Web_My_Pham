package orishop.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.DAO.DBConnectionSQLServer;
import orishop.DAO.ICustomerDAO;
import orishop.models.AccountModels;
import orishop.models.CustomerModels;
import orishop.services.AccountServiceImpl;
import orishop.services.IAccountService;

public class CustomerDAOImpl implements ICustomerDAO {

	
	IAccountService accountService = new AccountServiceImpl();
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<CustomerModels> findAll() {
		
		List<CustomerModels> list = new ArrayList<CustomerModels>();
		String sql = "Select * from Customer inner join Account On Customer.AccountID = Account.AccountID";
		try {
			// Kết nối dữ liệu
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				AccountModels account = accountService.findOne(rs.getInt("accountID"));
				CustomerModels customer = new CustomerModels();
				customer.setCustomerID(rs.getInt("customerID"));
				customer.setCustomerName(rs.getString("customerName"));
				customer.setBirthday(rs.getString("birthday"));
				customer.setGender(rs.getString("gender"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setMail(rs.getString("mail"));
				customer.setRank(rs.getString("rank"));
				customer.setReputation(rs.getInt("reputation"));
				customer.setRewardPoints(rs.getInt("rewardPoints"));
				customer.setAccountID(rs.getInt("accountID"));
				customer.setAccount(account);
				list.add(customer);

			}
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	public static void main(String[] args) {
		//ICustomerDAO userDAO = new CustomerDAOimpl();
		//UserModel list1 = userDAO.findOne(1);
		//UserModel list1 = userDAO.findOne("b");
		//boolean list1 = userDAO.checkExistUsername("b");
		//boolean list1 = userDAO.checkExistEmail("a");
		//UserModel model = new UserModel("a","abcde","a","a", 1 ,1,"123456");userDAO.updatestatus(model);
		//userDAO.delete(10);
	}


	@Override
	public CustomerModels findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}


}
