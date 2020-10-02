package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "buy_item")
public class Buy_item implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "buy_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int buy_id;
	String buy_total;
	String status;
	String companyname;
	String name;
	String address;
	String other_detail;
	String email;
	String contact;
	String picture1;
	String picture2;
	Buyer buyer;
	Design design;
	Payment payment;

	public Buy_item() {
		super();
	}

	public Buy_item(String buy_total, String status, String companyname, String name, String address,
			String other_detail, String email, String contact, String picture1, String picture2, Buyer buyer,
			Design design, Payment payment) {
		super();
		this.buy_total = buy_total;
		this.status = status;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.buyer = buyer;
		this.design = design;
		this.payment = payment;
	}

	public Buy_item(int buy_id, String buy_total, String status, String companyname, String name, String address,
			String other_detail, String email, String contact, String picture1, String picture2, Buyer buyer,
			Design design, Payment payment) {
		super();
		this.buy_id = buy_id;
		this.buy_total = buy_total;
		this.status = status;
		this.companyname = companyname;
		this.name = name;
		this.address = address;
		this.other_detail = other_detail;
		this.email = email;
		this.contact = contact;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.buyer = buyer;
		this.design = design;
		this.payment = payment;
	}

	public int getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(int buy_id) {
		this.buy_id = buy_id;
	}

	public String getBuy_total() {
		return buy_total;
	}

	public void setBuy_total(String buy_total) {
		this.buy_total = buy_total;
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

	public String getPicture1() {
		return picture1;
	}

	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	public String getPicture2() {
		return picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "buyer_id", nullable = false, foreignKey = @ForeignKey(name = "fk_buyer2buy"))
	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "design_id", nullable = false, foreignKey = @ForeignKey(name = "fk_design2buy"))

	public Design getDesign() {
		return design;
	}

	public void setDesign(Design design) {
		this.design = design;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "p_id", nullable = false, foreignKey = @ForeignKey(name = "fk_payment2buy"))
	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

}
