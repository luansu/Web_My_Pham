package orishop.models;
import java.io.Serializable;
public class CustomerModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int customerID;
	private String customerName;
	private String birthday;
	private String gender;
	private String address;
	private String phone;
	private String mail;
	private String rank;
	private int reputation;
	private int rewardPoints;
	private int accountID;
	AccountModels account;
	
	public CustomerModels(int customerID, String customerName, String birthday, String gender, String address,
			String phone, String mail, String rank, int reputation, int rewardPoints, int accountID) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.birthday = birthday;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.mail = mail;
		this.rank = rank;
		this.reputation = reputation;
		this.rewardPoints = rewardPoints;
		this.accountID = accountID;
	}

	public CustomerModels() {
		super();
	}
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public int getReputation() {
		return reputation;
	}
	public void setReputation(int reputation) {
		this.reputation = reputation;
	}
	public int getRewardPoints() {
		return rewardPoints;
	}
	public void setRewardPoints(int rewardPoints) {
		this.rewardPoints = rewardPoints;
	}
	public int getAccountID() {
		return accountID;
	}
	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}
	public AccountModels getAccount() {
		return account;
	}
	public void setAccount(AccountModels account) {
		this.account = account;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
