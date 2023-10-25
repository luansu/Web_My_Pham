package orishop.entity;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name="Product")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	private String prodID;
	private String prodName;
	private String prodDescription;
	private int amount;
	private int stoke;
	private float price;
	private String prodImg;
	
	@ManyToOne
	@JoinColumn(name="cateID")
	private Category category;

	public Product(String prodID, String prodName, String prodDescription, int amount, int stoke, float price,
			String prodImg, Category category) {
		super();
		this.prodID = prodID;
		this.prodName = prodName;
		this.prodDescription = prodDescription;
		this.amount = amount;
		this.stoke = stoke;
		this.price = price;
		this.prodImg = prodImg;
		this.category = category;
	}

	public Product() {
		super();
	}

	public String getProdID() {
		return prodID;
	}

	public void setProdID(String prodID) {
		this.prodID = prodID;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdDescription() {
		return prodDescription;
	}

	public void setProdDescription(String prodDescription) {
		this.prodDescription = prodDescription;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getStoke() {
		return stoke;
	}

	public void setStoke(int stoke) {
		this.stoke = stoke;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getProdImg() {
		return prodImg;
	}

	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}