package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Discount")
public class Discount implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "dis_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int dis_id;
	String dis_amt;
	String details;

	public Discount() {
		super();
	}

	public int getDis_id() {
		return dis_id;
	}

	public void setDis_id(int dis_id) {
		this.dis_id = dis_id;
	}

	public String getDis_amt() {
		return dis_amt;
	}

	public void setDis_amt(String dis_amt) {
		this.dis_amt = dis_amt;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Discount(int dis_id, String dis_amt, String details, Design design) {
		super();
		this.dis_id = dis_id;
		this.dis_amt = dis_amt;
		this.details = details;
		this.design = design;
	}

	public Discount(String dis_amt, String details, Design design) {
		super();
		this.dis_amt = dis_amt;
		this.details = details;
		this.design = design;
	}



	public Design getDesign() {
		return design;
	}

	public void setDesign(Design design) {
		this.design = design;
	}
	@ManyToOne
	public Design design;
}