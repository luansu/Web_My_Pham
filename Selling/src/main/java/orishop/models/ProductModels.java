package orishop.models;
import java.io.Serializable;
public class ProductModels implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String productID;
	private String productName;
	private String description;
	private int stock;
	private int amount;
	private Float unitPrice;
	private String categoryID;
	private String imageURL;
	public ProductModels() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductModels(String productID, String productName, String description, int stock, int amount,
			Float unitPrice, String categoryID, String imageURL) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.description = description;
		this.stock = stock;
		this.amount = amount;
		this.unitPrice = unitPrice;
		this.categoryID = categoryID;
		this.imageURL = imageURL;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
}
