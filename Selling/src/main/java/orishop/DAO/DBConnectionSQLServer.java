package orishop.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import orishop.DAO.DBConnectionSQLServer;

public class DBConnectionSQLServer {
<<<<<<< HEAD
	private final static String serverName = "LAPTOP-QN5NUQQB";
	private final static String dbName = "CosmeticStore";
	private final static String portNumber = "1433";
	private final static String instance = "";// MSSQLSERVER LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
	private final static String userID = "";
	private final static String password = "";
=======
	private final static String serverName = "DESKTOP-2I3JU9D";
	private final static String dbName = "BT";
	private final static String portNumber = "1433";
	private final static String instance = "";// MSSQLSERVER LEAVE THIS ONE
	private final static String userID = "LanAnh";
	private final static String password = "lananh113388";
>>>>>>> 1bda766b20ff65fa4df61fbb0afb10d5536e7c06
	
	//Kết nối SQL Server với Windows Authentication
	public static Connection getConnectionW() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ";integratedSecurity=true;databaseName=" +
		dbName;
		if (instance == null || instance.trim().isEmpty())
		url = "jdbc:sqlserver://" + serverName +
		";integratedSecurity=true;databaseName=" + dbName;
		//DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}
	
	public static void main(String[] args) {
		try {
			new DBConnectionSQLServer();
			System.out.println(DBConnectionSQLServer.getConnectionW());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
