package com.springmvc;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Subcat")

public class Subcat implements Serializable {
		
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="subcat_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	
	int subcat_id;
	
	String subcat_name;
	public Subcat() {
		super();
	}
	public Subcat(String subcat_name, Category cat) {
		super();
		this.subcat_name = subcat_name;
		this.cat = cat;
	}
	public Subcat(int subcat_id, String subcat_name, Category cat) {
		super();
		this.subcat_id = subcat_id;
		this.subcat_name = subcat_name;
		this.cat = cat;
	}
	
	public int getSubcat_id() {
		return subcat_id;
	}
	public void setSubcat_id(int subcat_id) {
		this.subcat_id = subcat_id;
	}
	public String getSubcat_name() {
		return subcat_name;
	}
	public void setSubcat_name(String subcat_name) {
		this.subcat_name = subcat_name;
	}
	

	
	public Category getCat() {
		return cat;
	}
	public void setCat(Category cat) {
		this.cat = cat;
	}
	@ManyToOne
	public Category cat;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Design> design;
}