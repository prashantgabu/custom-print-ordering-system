package com.springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("AdminService")
public class AdminService {

	@Autowired
	AdminDAO adminDao;

//***********************Admin
	@Transactional
	public List getAllPendingCnorder() {
		return adminDao.getAllPendingCnorder();
	}
	@Transactional
	public List viewAdmin() {
		return adminDao.getAllAdmin();
	}

	@Transactional
	public List getAllReview(int id) {
		return adminDao.getAllReview(id);
	}

	@Transactional
	public List viewDesign(int id) {
		return adminDao.getAllDesign(id);
	}

	public Designer getDesigner(int id) {
		Designer designer = adminDao.getDesigner(id);
		return designer;
	}

	@Transactional
	public void addAdmin(Admin admin) {
		adminDao.addAdmin(admin);
	}

	public Admin getAllAdmin(String email, String password) {
		return adminDao.getAllAdmin(email, password);
	}

	public List editDesigner(int id) {
		return adminDao.editDesigner(id);
	}

	@Transactional
	public void updateDesigner(Designer designer) {
		adminDao.updateDesigner(designer);
	}

	@Transactional
	public List viewPdesigner() {
		return adminDao.view_Pdesigner();
	}

	@Transactional
	public List viewVdesigner() {
		return adminDao.view_Vdesigner();
	}

	/*
	 * public void insertdata() { adminDao.insertalldata(); }
	 */

//************************CAtegory
	@Transactional
	public void addCat(Category cat) {
		adminDao.addCat(cat);
	}

	public List editCat(int id) {
		return adminDao.editCat(id);
	}

	@Transactional
	public void updateCat(Category cat) {
		adminDao.updateCat(cat);
	}

	public Category getCat(int id) {
		Category cat = adminDao.getCat(id);
		return cat;
	}

	@Transactional
	public List viewCat() {
		return adminDao.getAllCat();
	}

	@Transactional
	public void deleteCat(int id) {
		adminDao.deleteCat(id);
	}

//************************Subcat
	@Transactional
	public void addSubcat(Subcat subcat) {
		adminDao.addSubcat(subcat);
	}

	public List editSubcat(int id) {
		return adminDao.editSubcat(id);
	}

	@Transactional
	public void updateSubcat(Subcat subcat) {
		adminDao.updateSubcat(subcat);
	}

	public Subcat getSubcat(int id) {
		Subcat subcat = adminDao.getSubcat(id);
		return subcat;
	}

	@Transactional
	public List viewSubcat() {
		return adminDao.getAllSubcat();
	}

	@Transactional
	public void deleteSubcat(int id) {
		adminDao.deleteSubcat(id);
	}
	@Transactional
	public void deleteReview(int id) {
		adminDao.deleteReview(id);
	}

	// ************************Feedback
	@Transactional
	public void addFeedback(Feedback feedback) {
		adminDao.addFeedback(feedback);
	}

	public Feedback getFeedback(int id) {
		Feedback feedback = adminDao.getFeedback(id);
		return feedback;
	}

	@Transactional
	public List viewFeedback() {
		return adminDao.getAllFeedback();
	}

	@Transactional
	public List viewBuyer() {
		return adminDao.getAllBuyer();
	}

	@Transactional
	public void deleteFeedback(int id) {
		adminDao.deleteFeedback(id);
	}

	@Transactional
	public void deleteBuyer(int id) {
		adminDao.deleteBuyer(id);
	}

	@Transactional
	public List viewCnorder() {
		return adminDao.viewCnorder();
	}

	@Transactional
	public List viewCnorder(int id) {
		return adminDao.getAllCnorder(id);
	}

	public List editCnstatus(int id) {
		return adminDao.editCnstatus(id);
	}

	@Transactional
	public void updateCnstatus(Confirm_order cnorder) {
		adminDao.updateCnstatus(cnorder);
	}

	public Confirm_order getCnorder(int id) {
		Confirm_order cnorder = adminDao.getCnorder(id);
		return cnorder;
	}
}
