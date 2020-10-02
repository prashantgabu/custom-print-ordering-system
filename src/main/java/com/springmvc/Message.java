package com.springmvc;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Message")

public class Message implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "m_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	int m_id;

	String msg;
	String date;
	String file;
	String sender;

	public Message() {
		super();

	}

	

	public Message(String msg, Buyer buyer, Designer designer, String date, String file, String sender) {
		super();
		this.msg = msg;
		this.buyer = buyer;
		this.designer = designer;
		this.date = date;
		this.file = file;
		this.sender = sender;
	}



	public Message(int m_id, String msg, Buyer buyer, Designer designer, String date, String file, String sender) {
		super();
		this.m_id = m_id;
		this.msg = msg;
		this.buyer = buyer;
		this.designer = designer;
		this.date = date;
		this.file = file;
		this.sender = sender;
	}



	public String getFile() {
		return file;
	}



	public void setFile(String file) {
		this.file = file;
	}



	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Designer getDesigner() {
		return designer;
	}

	public void setDesigner(Designer designer) {
		this.designer = designer;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}
	@ManyToOne
	public Designer designer;
	@ManyToOne
	public Buyer buyer;

}