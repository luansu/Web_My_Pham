package orishop.models;
import java.io.Serializable;
public class CartItemModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String orderID;
	private String productID;
	private int quantity;
	private Float totalPrice;
	public CartItemModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartItemModels(String orderID, String productID, int quantity, Float totalPrice) {
		super();
		this.orderID = orderID;
		this.productID = productID;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}
}
