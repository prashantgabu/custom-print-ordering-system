package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "review")
public class Review implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "r_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int r_id;
	String r_date;
	String review_msg;
	String rating;

	public Review() {
		super();
	}

	public Review(String r_date, String review_msg, String rating, Buyer buyer, Design design) {
		super();
		this.r_date = r_date;
		this.review_msg = review_msg;
		this.rating = rating;
		this.buyer = buyer;
		this.design = design;
	}

	public Review(int r_id, String r_date, String review_msg, String rating, Buyer buyer, Design design) {
		super();
		this.r_id = r_id;
		this.r_date = r_date;
		this.review_msg = review_msg;
		this.rating = rating;
		this.buyer = buyer;
		this.design = design;
	}

	

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getReview_msg() {
		return review_msg;
	}

	public void setReview_msg(String review_msg) {
		this.review_msg = review_msg;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	public Design getDesign() {
		return design;
	}

	public void setDesign(Design design) {
		this.design = design;
	}
	@ManyToOne
	public Design design;
	
	@ManyToOne
	public Buyer buyer;
}