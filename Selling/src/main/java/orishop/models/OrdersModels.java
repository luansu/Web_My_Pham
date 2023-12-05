package orishop.models;
import java.io.Serializable;
import java.sql.Date;
public class OrdersModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int orderID;
	private Float orderValue;
	private Date orderDate;
	private int cartID;
	private int customerID;
	
	
	public OrdersModels() {
		super();
	}
	public OrdersModels(int orderID, Float orderValue, Date orderDate, int cartID, int customerID) {
		super();
		this.orderID = orderID;
		this.orderValue = orderValue;
		this.orderDate = orderDate;
		this.cartID = cartID;
		this.customerID = customerID;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
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
	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	
}
