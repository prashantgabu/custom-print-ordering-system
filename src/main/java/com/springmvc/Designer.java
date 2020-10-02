package com.springmvc;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Designer")
public class Designer implements Serializable {

	/**
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "designer_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int designer_id;
	String name;
	String email;
	String password;
	String address;

	String sub_status;
	String status;
	String city;
	String propic;
	String gstno;
	String storename;
	String contact;

	public Designer() {
		super();
	}

	public Designer(int designer_id, String sub_status) {
		super();
		this.designer_id = designer_id;
		this.sub_status = sub_status;
	}

	public Designer(String name, String email, String password, String address, String sub_status, String status,
			String city, String propic, String gstno, String storename, String contact) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.sub_status = sub_status;
		this.status = status;
		this.city = city;
		this.propic = propic;
		this.gstno = gstno;
		this.storename = storename;
		this.contact = contact;
	}

	public Designer(int designer_id, String name, String email, String password, String address, String sub_status,
			String status, String city, String propic, String gstno, String storename, String contact) {
		super();
		this.designer_id = designer_id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.sub_status = sub_status;
		this.status = status;
		this.city = city;
		this.propic = propic;
		this.gstno = gstno;
		this.storename = storename;
		this.contact = contact;
	}

	public String getSub_status() {
		return sub_status;
	}

	public void setSub_status(String sub_status) {
		this.sub_status = sub_status;
	}

	public int getDesigner_id() {
		return designer_id;
	}

	public void setDesigner_id(int designer_id) {
		this.designer_id = designer_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPropic() {
		return propic;
	}

	public void setPropic(String propic) {
		this.propic = propic;
	}

	public String getGstno() {
		return gstno;
	}

	public void setGstno(String gstno) {
		this.gstno = gstno;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Design> design;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Message> message;
	
}