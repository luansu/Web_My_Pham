package orishop.models;
import java.io.Serializable;
import java.sql.Date;
public class OrdersModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String orderID;
	private Float orderValue;
	private Date orderDate;
	private Date orderTime;
	private String cartID;
	private String customerID;
	public OrdersModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrdersModels(String orderID, Float orderValue, Date orderDate, Date orderTime, String cartID,
			String customerID) {
		super();
		this.orderID = orderID;
		this.orderValue = orderValue;
		this.orderDate = orderDate;
		this.orderTime = orderTime;
		this.cartID = cartID;
		this.customerID = customerID;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public Float getOrderValue() {
		return orderValue;
	}
	public void setOrderValue(Float orderValue) {
		this.orderValue = orderValue;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getCartID() {
		return cartID;
	}
	public void setCartID(String cartID) {
		this.cartID = cartID;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
}
