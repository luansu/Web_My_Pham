package orishop.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.DAO.DBConnectionSQLServer;
import orishop.DAO.IEmployeeDAO;
import orishop.models.EmployeeModels;


public class EmployeeDAOImpl implements IEmployeeDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	@Override
	public List<EmployeeModels> countOrder() {
		List<EmployeeModels> list = new ArrayList<EmployeeModels>();
		String sql = "Select employeeId, count(*) as countOrder from Order group by employeeId order by countOrder DESC";
		try {
			// ket noi du lieu
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new EmployeeModels(rs.getInt(1), rs.getInt(2)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	

}
