package orishop.models;
import java.io.Serializable;
public class CustomerModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String customerID;
	private String customerName;
	private String address;
	private String phone;
	private int point;
	private String accountID;
	public CustomerModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerModels(String customerID, String customerName, String address, String phone, int point,
			String accountID) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.address = address;
		this.phone = phone;
		this.point = point;
		this.accountID = accountID;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getAccountID() {
		return accountID;
	}
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}
}
