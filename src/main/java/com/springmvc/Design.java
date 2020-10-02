package com.springmvc;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name = "Design")
public class Design implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "design_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int design_id;
	String name;
	String photo_1;
	String photo_2;
	String photo_3;

	String price;
	String detail;
	String quantity;

	String length;
	String width;

	public Design() {
		super();
	}

	public Design(String name, String photo_1, String photo_2, String photo_3, String price, String detail,
			String quantity, String length, String width, Designer designer, Subcat subcat) {
		super();
		this.name = name;
		this.photo_1 = photo_1;
		this.photo_2 = photo_2;
		this.photo_3 = photo_3;
		this.price = price;
		this.detail = detail;
		this.quantity = quantity;
		this.length = length;
		this.width = width;
		this.designer = designer;
		this.subcat = subcat;
	}

	public Design(int design_id, String name, String photo_1, String photo_2, String photo_3, String price,
			String detail, String quantity, String length, String width, Designer designer, Subcat subcat) {
		super();
		this.design_id = design_id;
		this.name = name;
		this.photo_1 = photo_1;
		this.photo_2 = photo_2;
		this.photo_3 = photo_3;
		this.price = price;
		this.detail = detail;
		this.quantity = quantity;
		this.length = length;
		this.width = width;
		this.designer = designer;
		this.subcat = subcat;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getDesign_id() {
		return design_id;
	}

	public void setDesign_id(int design_id) {
		this.design_id = design_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoto_1() {
		return photo_1;
	}

	public void setPhoto_1(String photo_1) {
		this.photo_1 = photo_1;
	}

	public String getPhoto_2() {
		return photo_2;
	}

	public void setPhoto_2(String photo_2) {
		this.photo_2 = photo_2;
	}

	public String getPhoto_3() {
		return photo_3;
	}

	public void setPhoto_3(String photo_3) {
		this.photo_3 = photo_3;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public Designer getDesigner() {
		return designer;
	}

	public void setDesigner(Designer designer) {
		this.designer = designer;
	}

	
	public Subcat getSubcat() {
		return subcat;
	}

	public void setSubcat(Subcat subcat) {
		this.subcat = subcat;
	}
	@ManyToOne
	public Subcat subcat;
	@ManyToOne
	public Designer designer;

	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Cart> cart;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Confirm_order> cnorder;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Discount> discount;

}
