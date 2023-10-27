package orishop.models;
import java.io.Serializable;
import java.sql.Date;
public class EmployeeModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String employeeID;
	private String employeeName;
	private Date birthDate;
	private String gender;
	private String address;
	private String phone;
	private String jobID;
	private String accountID;
	private String imageURL;
	
	
	public EmployeeModels() {
		super();
		// TODO Auto-generated constructor stub
	}


	public EmployeeModels(String employeeID, String employeeName, Date birthDate, String gender, String address,
			String phone, String jobID, String accountID, String imageURL) {
		super();
		this.employeeID = employeeID;
		this.employeeName = employeeName;
		this.birthDate = birthDate;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.jobID = jobID;
		this.accountID = accountID;
		this.imageURL = imageURL;
	}


	public String getEmployeeID() {
		return employeeID;
	}


	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
	}


	public String getEmployeeName() {
		return employeeName;
	}


	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}


	public Date getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
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


	public String getJobID() {
		return jobID;
	}


	public void setJobID(String jobID) {
		this.jobID = jobID;
	}


	public String getAccountID() {
		return accountID;
	}


	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}


	public String getImageURL() {
		return imageURL;
	}


	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
}
