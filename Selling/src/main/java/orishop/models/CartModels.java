package orishop.models;
import java.io.Serializable;

public class CartModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String cartID;
	private Float totalPrice;
	public CartModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartModels(String cartID, Float totalPrice) {
		super();
		this.cartID = cartID;
		this.totalPrice = totalPrice;
	}
	public String getCartID() {
		return cartID;
	}
	public void setCartID(String cartID) {
		this.cartID = cartID;
	}
	public Float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}
}
