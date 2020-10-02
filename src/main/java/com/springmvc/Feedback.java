package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "feedback")
public class Feedback implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "f_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int f_id;

	String f_date;
	String name;
	String email;
	String msg;

	public Feedback() {
		super();
	}

	public Feedback(String f_date, String name, String email, String msg) {
		super();
		this.f_date = f_date;
		this.name = name;
		this.email = email;
		this.msg = msg;
	}

	public Feedback(int f_id, String f_date, String name, String email, String msg) {
		super();
		this.f_id = f_id;
		this.f_date = f_date;
		this.name = name;
		this.email = email;
		this.msg = msg;
	}

	public int getF_id() {
		return f_id;
	}

	public void setF_id(int f_id) {
		this.f_id = f_id;
	}

	public String getF_date() {
		return f_date;
	}

	public void setF_date(String f_date) {
		this.f_date = f_date;
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}