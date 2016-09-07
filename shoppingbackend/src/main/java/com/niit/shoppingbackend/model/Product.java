package com.niit.shoppingbackend.model;



import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.annotations.Check;
import org.hibernate.validator.constraints.Range;
/*import javax.persistence.Transient;*/
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
@Component("product")
public class Product {
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private int id; 
	private String name;
	private String description;
	/*@Size(min=3,message="cost must be greater than 100" )*/

    @Range(min=100,max=2000,message="cost must be greater than 100")
    /*@Check(constraints = "cost must be greater than 100")*/
	private int price; 
	/*private int cat_id;*/
	/*private String category;*/
	@ManyToOne(cascade=CascadeType.ALL)
	
	@JoinColumn(name="CAT_ID")
	private Category cat;
	/*private String supplier;*/
	
@ManyToOne(cascade=CascadeType.ALL)
	
	@JoinColumn(name="SUP_ID")
	private Supplier sup;
	@Transient
	private MultipartFile file;


public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
public String getName() {
		return name;
	}
public void setName(String name) {
		this.name = name;
	}
public String getDescription() {
		return description;
	}
public void setDescription(String description) {
		this.description = description;
	}


public Category getCat() {
	return cat;
}

public void setCat(Category cat) {
	this.cat = cat;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
/*public String getSupplier() {
	return supplier;
}
public void setSupplier(String supplier) {
	this.supplier = supplier;
}*/

/*public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}*/
public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}
public Supplier getSup() {
	return sup;
}
public void setSup(Supplier sup) {
	this.sup = sup;
}

}
