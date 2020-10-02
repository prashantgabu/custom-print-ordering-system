package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "payment")
public class Payment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "p_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int p_id;
	String number;
	String cvv;
	String exp_month;
	String exp_year;
	String name;
	String status;
	String amount;

	public Payment(String number, String cvv, String exp_month, String exp_year, String name, String status,
			String amount) {
		super();
		this.number = number;
		this.cvv = cvv;
		this.exp_month = exp_month;
		this.exp_year = exp_year;
		this.name = name;
		this.status = status;
		this.amount = amount;
	}

	public Payment() {
		super();
	}

	public Payment(int p_id, String number, String cvv, String exp_month, String exp_year, String name, String status,
			String amount) {
		super();
		this.p_id = p_id;
		this.number = number;
		this.cvv = cvv;
		this.exp_month = exp_month;
		this.exp_year = exp_year;
		this.name = name;
		this.status = status;
		this.amount = amount;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getExp_month() {
		return exp_month;
	}

	public void setExp_month(String exp_month) {
		this.exp_month = exp_month;
	}

	public String getExp_year() {
		return exp_year;
	}

	public void setExp_year(String exp_year) {
		this.exp_year = exp_year;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

}
