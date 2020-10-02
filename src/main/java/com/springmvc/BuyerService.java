package com.springmvc;

import java.text.ParseException;
import java.util.List;

import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("BuyerService")
public class BuyerService {

	@Autowired
	BuyerDAO buyerDao;

	// ***************************** buyer
	@Transactional
	public List getAllSearch(String search) {
		List list = buyerDao.getAllSearch(search);
		return list;
	}
	public List changePwd(String oldpwd) {
		List list = buyerDao.changePwd(oldpwd);
		return list;
	}

	@Transactional
	public void deleteCart(int id) {
		buyerDao.deleteCart(id);
	}

	public List getpassword(String email) {
		return buyerDao.getpassword(email);
	}

	public List editProfile(int id) {
		return buyerDao.editProfile(id);
	}

	@Transactional
	public void updateProfile(Buyer buyer) {
		buyerDao.updateProfile(buyer);
	}

	@Transactional
	public void addBuyer(Buyer buyer) {
		buyerDao.addBuyer(buyer);
	}

	public Buyer getBuyer(int id) {
		Buyer buyer = buyerDao.getBuyer(id);
		return buyer;
	}

	@Transactional
	public List viewAllBuyer(int id) {
		return buyerDao.getAllBuyer(id);
	}

	public List viewBuyer() {
		return buyerDao.getAllBuyer();
	}

	public Buyer getAllBuyer(String email, String password) {
		return buyerDao.getAllBuyer(email, password);
	}

	// ***************************** payment
	@Transactional
	public void addPayment(Payment payment) {
		buyerDao.addPayment(payment);
	}

	public Payment getPayment(int id) {
		Payment payment = buyerDao.getPayment(id);
		return payment;
	}

	public List viewPayment() {
		return buyerDao.getAllBuyer();
	}// ***************************** payment

	@Transactional
	public void addReview(Review review) {
		buyerDao.addReview(review);
	}

	public Review getReview(int id) {
		Review review = buyerDao.getReview(id);
		return review;
	}

	public List viewReview() {
		return buyerDao.getAllReview();
	}

	// **************sub cat
	public Subcat getSubcat(int id) {
		Subcat subcat = buyerDao.getSubCat(id);
		return subcat;
	}

	// ***********************Design

	public Design getDesign(int id) {
		Design design = buyerDao.getDesign(id);
		return design;
	}

	public List getAllDesign() {
		return buyerDao.getAllDesign();
	}

	public List getAllDiscount() {
		return buyerDao.getAllDiscount();
	}

	public List getAllCardDesign() {
		return buyerDao.getAllCardDesign();
	}

	public List getAllTshirtDesign() {
		return buyerDao.getAllTshirtDesign();
	}

	public List getAllOtherDesign() {
		return buyerDao.getAllOtherDesign();
	}

	public List getAllBannerDesign() {
		return buyerDao.getAllBannerDesign();
	}

	public List getAllCategory() {
		return buyerDao.getAllCat();
	}

	public List getAllDesign(int id) {
		return buyerDao.getAllDesign(id);
	}

	public List getDiscount(Design design) {
		return buyerDao.getDiscount(design);
	}

	public List getAllReview(Design design) {
		return buyerDao.getAllReview(design);
	}

	// ***************************** buy_item
	@Transactional
	public void addBuy_item(Buy_item buy_item) {
		buyerDao.addBuy_item(buy_item);
	}

	public Buy_item getBuy_item(int id) {
		Buy_item buy_item = buyerDao.getBuy_item(id);
		return buy_item;
	}

	public List viewBuy_item() {
		return buyerDao.getAllBuy_item();
	}

	// ******************************Cart
	@Transactional
	public void addCart(Cart cart) {
		buyerDao.addCart(cart);
	}

	public Cart getCart(int id) {
		Cart cart = buyerDao.getCart(id);
		return cart;
	}

	public List viewCart() {
		return buyerDao.getAllCart();
	}

	@Transactional
	public List viewCart(int id) {
		return buyerDao.getAllCart(id);
	}

	public List getAllCart(int id) {
		return buyerDao.getAllCart(id);
	}
	public List viewCnorderByDate(int id) {
		return buyerDao.viewCnorderByDate(id);
	}
	
	// ******************************Feedback

	@Transactional
	public void addFeedback(Feedback feedback) {
		buyerDao.addFeedback(feedback);
	}

	public Feedback getFeedback(int id) {
		Feedback feedback = buyerDao.getFeedback(id);
		return feedback;
	}

	public List viewFeedback() {
		return buyerDao.getAllFeedback();
	}

	// ******************* payement
	@Transactional
	public boolean confirmOrder(Buyer buyer,Payment payment) {
		return buyerDao.confirmOrder(buyer,payment);
	}

	public Payment getAllPayment(String cvv, String exp_month, String exp_year, String number) {
		return buyerDao.getAllPayment(cvv, exp_month, exp_year, number);
	}

	@Transactional
	public List viewOrder(int id) {
		return buyerDao.getAllOrder(id);
	}
	public List viewDiscount() {
		return buyerDao.getAllDiscount();
	}

	@Transactional
	public List viewOrderById(int cid,int buyer_id) {
		return buyerDao.viewOrderById(cid,buyer_id);
	}

	@Transactional
	public List viewMessage(int id) {
		return buyerDao.getAllMessage(id);
	}

	public String getDesigner(int id) {
		return buyerDao.getDesigner(id);
	}

	public Designer getDesigner1(int id) {
		Designer designer = buyerDao.getDesigner1(id);
		return designer;
	}

	@Transactional
	public void addMsg(com.springmvc.Message msg) {
		buyerDao.addMsg(msg);
	}

}
