package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "cart")
public class Cart implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "cart_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int cart_id;
	String qty;
	String status;
	String companyname;
	String name;
	String address;
	String other_detail;
	String email;
	String contact;
	String picture_1;
	String picture_2;
	String discount;

	public Cart() {
		super();
	}

	public Cart(String qty, String status, String companyname, String name, String address, String other_detail,
			String email, String contact, String picture_1, String picture_2, String discount, Buyer buyer,
			Design design) {
		super();
		this.qty = qty;
		this.status = status;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.picture_1 = picture_1;
		this.picture_2 = picture_2;
		this.discount = discount;
		this.buyer = buyer;
		this.design = design;
	}

	public Cart(int cart_id, String qty, String status, String companyname, String name, String address,
			String other_detail, String email, String contact, String picture_1, String picture_2, String discount,
			Buyer buyer, Design design) {
		super();
		this.cart_id = cart_id;
		this.qty = qty;
		this.status = status;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.picture_1 = picture_1;
		this.picture_2 = picture_2;
		this.discount = discount;
		this.buyer = buyer;
		this.design = design;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOther_detail() {
		return other_detail;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public void setOther_detail(String other_detail) {
		this.other_detail = other_detail;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPicture_1() {
		return picture_1;
	}

	public void setPicture_1(String picture_1) {
		this.picture_1 = picture_1;
	}

	public String getPicture_2() {
		return picture_2;
	}

	public void setPicture_2(String picture_2) {
		this.picture_2 = picture_2;
	}

	public Design getDesign() {
		return design;
	}

	public void setDesign(Design design) {
		this.design = design;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	@ManyToOne
	public Design design;
	@ManyToOne
	public Buyer buyer;

}
