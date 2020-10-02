package com.springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("DesignerService")
public class DesignerService {

	@Autowired
	DesignerDAO designerDao;

	// ***************************** designer
	public List changePwd(String oldpwd) {
		List list = designerDao.changePwd(oldpwd);
		return list;
	}
	@Transactional
	public List viewBuyer(int id) {
		return designerDao.getAllBuyer(id);
	}
	@Transactional
	public List getAllReview(int id) {
		return designerDao.getAllReview(id);
	}

	public List editProfile(int id) {
		return designerDao.editProfile(id);
	}

	@Transactional
	public void updateProfile(Designer designer) {
		designerDao.updateProfile(designer);
	}

	@Transactional
	public void addDesigner(Designer designer) {
		designerDao.addDesigner(designer);
	}

	public Designer getDesigner(int id) {
		Designer designer = designerDao.getDesigner(id);
		return designer;
	}

	public List viewDesigner() {
		return designerDao.getAllDesigner();
	}

	public String getBuyer(int id) {
		return designerDao.getBuyer(id);
	}

	public List getpassword(String email) {
		return designerDao.getpassword(email);
	}

	public Buyer getBuyer1(int id) {
		Buyer buyer = designerDao.getBuyer1(id);
		return buyer;
	}

	public Designer getAllDesigner(String email, String password) {
		return designerDao.getAllDesigner(email, password);
	}

	// ***************************** design
	@Transactional
	public void addDesign(Design design) {
		designerDao.addDesign(design);
	}

	public Design getDesign(int id) {
		Design design = designerDao.getDesign(id);
		return design;
	}

	public List editDesign(int id) {
		return designerDao.editDesign(id);
	}

	@Transactional
	public void updateDesign(Design design) {
		designerDao.updateDesign(design);
	}

	@Transactional
	public List viewDesign() {
		return designerDao.getAllDesign();
	}

	@Transactional
	public List viewDesigner(int id) {
		return designerDao.getAllDesigner(id);
	}

	@Transactional
	public List viewDesign(int id) {
		return designerDao.getAllDesign(id);
	}

	@Transactional
	public List viewCnorder(int id) {
		return designerDao.getAllCnorder(id);
	}

	@Transactional
	public List getAllPendingCnorder(int id) {
		return designerDao.getAllPendingCnorder(id);
	}

	@Transactional
	public void deleteDesign(int id) {
		designerDao.deleteDesign(id);
	}
	// ***************************** discount

	@Transactional
	public void addDiscount(Discount discount) {
		designerDao.addDiscount(discount);
	}

	@Transactional
	public List viewDiscount(int id) {
		return designerDao.getAllDiscount(id);
	}

	@Transactional
	public List getAllDisc(int id) {
		return designerDao.getAllDisc(id);
	}

	public Discount getDiscount(int id) {
		Discount discount = designerDao.getDiscount(id);
		return discount;
	}

	public List editDiscount(int id) {
		return designerDao.editDiscount(id);
	}

	@Transactional
	public void updateDiscount(Discount discount) {
		designerDao.updateDiscount(discount);
	}

	public List viewDiscount() {
		return designerDao.getAllDiscount();
	}

	@Transactional
	public void deleteDiscount(int id) {
		designerDao.deleteDiscount(id);
	}
	// ********************** Buy_item

	@Transactional
	public void addBuy_item(Buy_item buy_item) {
		designerDao.addBuy_item(buy_item);
	}

	public Buy_item getBuy_item(int id) {
		Buy_item buy_item = designerDao.getBuy_item(id);
		return buy_item;
	}

	public List viewBuy_item() {
		return designerDao.getAllBuy_item();
	}

	@Transactional
	public void deleteBuy_item(int id) {
		designerDao.deleteBuy_item(id);
	}
	// *********************** Review

	@Transactional
	public void addReview(Review review) {
		designerDao.addReview(review);
	}

	public Review getReview(int id) {
		Review review = designerDao.getReview(id);
		return review;
	}

	public List viewReview() {
		return designerDao.getAllReview();
	}

	@Transactional
	public void deleteReview(int id) {
		designerDao.deleteReview(id);
	}
	// *********************** Feedback

	@Transactional
	public void addFeedback(Feedback feedback) {
		designerDao.addFeedback(feedback);
	}

	public Feedback getFeedback(int id) {
		Feedback feedback = designerDao.getFeedback(id);
		return feedback;
	}

	public List viewFeedback() {
		return designerDao.getAllFeedback();
	}

	// ********************* sub cat
	@Transactional
	public void addSubcat(Subcat subcat) {
		designerDao.addSubcat(subcat);
	}

	public Subcat getSubcat(int id) {
		Subcat subcat = designerDao.getSubcat(id);
		return subcat;
	}

	public List viewSubcat() {
		return designerDao.getAllSubcat();
	}

	// ********************* Category
	@Transactional
	public void addCat(Category cat) {
		designerDao.addCat(cat);
	}

	public Category get(int id) {
		Category cat = designerDao.getCat(id);
		return cat;
	}

	public List viewCat() {
		return designerDao.getAllCat();
	}

	// **************COnfirm Order
	@Transactional
	public List viewOrder() {
		return designerDao.getAllOrder();
	}@Transactional
	public List viewOrder(int id) {
		return designerDao.getAllOrder(id);
	}

	@Transactional
	public void addMsg(Message msg) {
		designerDao.addMsg(msg);
	}

	@Transactional
	public List viewMessage(int id) {
		return designerDao.getAllMessage(id);
	}

}
