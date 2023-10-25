package orishop.entity;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Category")
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	
	// Nếu muốn tạo tự động mã thì dùng dòng này
	//@GeneratedValue(stragety=GenerationType.IDENTITY)
	@Id
	private String cateID;
	private String cateName;
	private String images;
	
	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private List<Product> products;

	public Category(String cateID, String cateName, String images, List<Product> products) {
		super();
		this.cateID = cateID;
		this.cateName = cateName;
		this.images = images;
		this.products = products;
	}

	public Category() {
		super();
	}

	public String getCateID() {
		return cateID;
	}

	public void setCateID(String cateID) {
		this.cateID = cateID;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
}