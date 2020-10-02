package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Admin")

public class Admin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "admin_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	int admin_id;

	String email;
	String password;

	public Admin() {
		super();
	}

	public Admin(int admin_id, String email, String password) {
		super();
		this.admin_id = admin_id;
		this.email = email;
		this.password = password;
	}

	public Admin(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}