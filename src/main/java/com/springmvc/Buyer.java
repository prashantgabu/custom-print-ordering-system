package com.springmvc;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "buyer")

public class Buyer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "buyer_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	int buyer_id;
	String email;
	String password;
	String fname;
	String lname;
	String address;
	String city;
	String dob;
	String fav;
	String propic;
	String status;
	String state;
	String gender;

	public Buyer() {
		super();
	}

	public Buyer(String email, String password, String fname, String lname, String address, String city, String dob,
			String fav, String propic, String status, String state, String gender) {
		super();
		this.email = email;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.city = city;
		this.dob = dob;
		this.fav = fav;
		this.propic = propic;
		this.status = status;
		this.state = state;
		this.gender = gender;
	}

	public Buyer(int buyer_id, String email, String password, String fname, String lname, String address, String city,
			String dob, String fav, String propic, String status, String state, String gender) {
		super();
		this.buyer_id = buyer_id;
		this.email = email;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.city = city;
		this.dob = dob;
		this.fav = fav;
		this.propic = propic;
		this.status = status;
		this.state = state;
		this.gender = gender;
	}

	public int getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(int buyer_id) {
		this.buyer_id = buyer_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getFav() {
		return fav;
	}

	public void setFav(String fav) {
		this.fav = fav;
	}

	public String getPropic() {
		return propic;
	}

	public void setPropic(String propic) {
		this.propic = propic;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Cart> cart;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Confirm_order> cnorder;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Message> message;

}