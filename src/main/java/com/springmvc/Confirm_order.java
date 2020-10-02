package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "confirm_order")
public class Confirm_order implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "cnorder_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int cnorder_id;
	String delivery_status;
	String qty;
	String companyname;
	String name;
	String address;
	String other_detail;
	String email;
	String contact;
	String date;
	String picture_1;
	String picture_2;
	String discount;

	public Confirm_order() {
		super();
	}

	public Confirm_order(String delivery_status, String qty, String companyname, String name, String address,
			String other_detail, String email, String contact, String date, String picture_1, String picture_2,
			String discount, Design design, Buyer buyer) {
		super();
		this.delivery_status = delivery_status;
		this.qty = qty;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.date = date;
		this.picture_1 = picture_1;
		this.picture_2 = picture_2;
		this.discount = discount;
		this.design = design;
		this.buyer = buyer;
	}

	public Confirm_order(int cnorder_id, String delivery_status, String qty, String companyname, String name,
			String address, String other_detail, String email, String contact, String date, String picture_1,
			String picture_2, String discount, Design design, Buyer buyer) {
		super();
		this.cnorder_id = cnorder_id;
		this.delivery_status = delivery_status;
		this.qty = qty;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.date = date;
		this.picture_1 = picture_1;
		this.picture_2 = picture_2;
		this.discount = discount;
		this.design = design;
		this.buyer = buyer;
	}

	public int getCnorder_id() {
		return cnorder_id;
	}

	public void setCnorder_id(int cnorder_id) {
		this.cnorder_id = cnorder_id;
	}

	public String getDelivery_status() {
		return delivery_status;
	}

	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getCompanyname() {
		return companyname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
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
	public Buyer buyer;
	@ManyToOne
	public Design design;

}
