package com.springmvc;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Category")

public class Category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "cat_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	int cat_id;
	String cat_name;
	String cat_photo;

	public Category(String cat_name, String cat_photo) {
		super();
		this.cat_name = cat_name;
		this.cat_photo = cat_photo;
	}

	public Category() {
		super();
	}

	public Category(int cat_id, String cat_name, String cat_photo) {
		super();
		this.cat_id = cat_id;
		this.cat_name = cat_name;
		this.cat_photo = cat_photo;
	}

	public String getCat_photo() {
		return cat_photo;
	}

	public void setCat_photo(String cat_photo) {
		this.cat_photo = cat_photo;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Set<Subcat> subcat;

}