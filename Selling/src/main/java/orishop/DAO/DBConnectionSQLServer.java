package orishop.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import orishop.DAO.DBConnectionSQLServer;

public class DBConnectionSQLServer {
	private final static String serverName = "DESKTOP-2I3JU9D";
	private final static String dbName = "BT";
	private final static String portNumber = "1433";
	private final static String instance = "";// MSSQLSERVER LEAVE THIS ONE
	private final static String userID = "LanAnh";
	private final static String password = "lananh113388";
	
	public static Connection getConnectionW() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName+";encrypt=true" + ";trustServerCertificate=true";
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName +";encrypt=true" + ";trustServerCertificate=true";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, userID, password);	}
	
	public static void main(String[] args) {
		try {
			new DBConnectionSQLServer();
			System.out.println(DBConnectionSQLServer.getConnectionW());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
