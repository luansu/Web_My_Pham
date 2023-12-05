package orishop.models;
import java.io.Serializable;

public class AccountModels implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String accountID;
	private String userName;
	private String password;
	public AccountModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AccountModels(String accountID, String userName, String password) {
		super();
		this.accountID = accountID;
		this.userName = userName;
		this.password = password;
	}
	public String getAccountID() {
		return accountID;
	}
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
