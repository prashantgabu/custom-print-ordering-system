package com.springmvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class admin_controller {

	@Autowired
	AdminService adminService;

	// *******************************************Admin******************************************************

	@RequestMapping(value = "/A_logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession mysession = request.getSession(true);
		mysession.removeAttribute("admin_id");
		return "redirect:/A_login";

	}

	@RequestMapping("/A_view_pdesigner")
	public ModelAndView A_view_pdesigner() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewPdesigner();
		mv.addObject("list", list);
		mv.setViewName("A_view_pdesigner.jsp");
		return mv;
	}

	@RequestMapping("/A_view_vdesigner")
	public ModelAndView A_view_vdesigner() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewVdesigner();
		mv.addObject("list", list);
		mv.setViewName("A_view_vdesigner.jsp");
		return mv;
	}

	@RequestMapping("/A_view_design/{id}")
	public ModelAndView A_view_design(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);
		List list = adminService.viewDesign(id);
		mv.addObject("list", list);
		mv.setViewName("../A_view_design.jsp");
		return mv;

	}

	int d_id;

	@RequestMapping("/A_view_review/{id}")
	public ModelAndView A_view_review(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);
		List list = adminService.getAllReview(id);
		mv.addObject("list", list);
		d_id = id;
		mv.setViewName("../A_view_review.jsp");
		return mv;

	}

	@RequestMapping("/A_delete_review/{r_id}")
	public String A_delete_review(@PathVariable("r_id") int r_id) {
		adminService.deleteReview(r_id);
		return "redirect:/A_view_review/" + d_id;
	}

	@RequestMapping("/A_view_cnorder/{id}")
	public ModelAndView A_view_vcnorder(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list2 = adminService.viewCnorder(id);
		int list2_len = list2.size();
		mv.addObject("list2", list2);
		mv.addObject("list2_len", list2_len);
		mv.setViewName("../A_view_cnorder.jsp");
		return mv;

	}

	@RequestMapping("/A_edit_pdesigner/{id}")
	public String A_edit_designer(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		Designer designer = adminService.getDesigner(id);

		Designer designer1 = new Designer(designer.designer_id, designer.name, designer.email, designer.password,
				designer.address, designer.sub_status, "verified", designer.city, designer.propic, designer.gstno,
				designer.storename, designer.contact);
		adminService.updateDesigner(designer1);
		return "redirect:/A_view_pdesigner";

	}

	@RequestMapping("/A_edit_vdesigner/{id}")
	public String A_edit_vdesigner(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		Designer designer = adminService.getDesigner(id);

		Designer designer1 = new Designer(designer.designer_id, designer.name, designer.email, designer.password,
				designer.address, "Printsalive Plus", "verified", designer.city, designer.propic, designer.gstno,
				designer.storename, designer.contact);

		adminService.updateDesigner(designer1);

		return "redirect:/A_view_vdesigner";

	}

	@RequestMapping("/A_edit_ndesigner/{id}")
	public String A_edit_ndesigner(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		Designer designer = adminService.getDesigner(id);

		Designer designer1 = new Designer(designer.designer_id, designer.name, designer.email, designer.password,
				designer.address, "None", "verified", designer.city, designer.propic, designer.gstno,
				designer.storename, designer.contact);
		adminService.updateDesigner(designer1);
		return "redirect:/A_view_vdesigner";

	}

	@RequestMapping("/updateDesigner")
	public String updateDesigner(HttpServletRequest request, HttpServletResponse response) {
		String sub_status = request.getParameter("sub_status");

		/*
		 * String demail = request.getParameter("demail"); String dpwd =
		 * request.getParameter("dpwd"); String dhaddress =
		 * request.getParameter("dhaddress"); String dcontact =
		 * request.getParameter("dcontact"); String dcity =
		 * request.getParameter("dcity"); String dphoto =
		 * request.getParameter("dphoto");
		 */
		int designer_id = Integer.parseInt(request.getParameter("designer_id"));

		Designer designer = new Designer(designer_id, sub_status);
		adminService.updateDesigner(designer);

		return "redirect:/d_index";

	}

	@RequestMapping("/A_login")
	public ModelAndView A_login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("A_login.jsp");
		return mv;
	}

	@RequestMapping("/A_chart")
	public ModelAndView A_chart(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		List list = adminService.viewCnorder();

		double totaljan = 0, totalfeb = 0, totalmar = 0, totalapr = 0, totalmay = 0, totaljun = 0, totaljul = 0,
				totalaug = 0, totalsep = 0, totaloct = 0, totalnov = 0, totaldec = 0;

		for (int i = 0; i < list.size(); i++) {
			Confirm_order cnorder = (Confirm_order) list.get(i);
			String date = cnorder.date;

			if (date.contains("Jan"))
				totaljan = totaljan + 1;
			if (date.contains("Feb"))
				totalfeb = totalfeb + 1;
			if (date.contains("Mar"))
				totalmar = totalmar + 1;
			if (date.contains("Apr"))
				totalapr = totalapr + 1;
			if (date.contains("May"))
				totalmay = totalmay + 1;
			if (date.contains("Jun"))
				totaljun = totaljun + 1;
			if (date.contains("Jul"))
				totaljul = totaljul + 1;
			if (date.contains("Aug"))
				totalaug = totalaug + 1;
			if (date.contains("Sep"))
				totalsep = totalsep + 1;
			if (date.contains("Oct"))
				totaloct = totaloct + 1;
			if (date.contains("Nov"))
				totalnov = totalnov + 1;
			if (date.contains("Dec"))
				totaldec = totaldec + 1;

		}

		double tjanp = totaljan * 100 / 100;
		double tfebp = totalfeb * 100 / 100;
		double tmarp = totalmar * 100 / 100;
		double taprp = totalapr * 100 / 100;
		double tmayp = totalmay * 100 / 100;
		double tjunp = totaljun * 100 / 100;
		double tjulp = totaljul * 100 / 100;
		double taugp = totalaug * 100 / 100;
		double tsepp = totalsep * 100 / 100;
		double toctp = totaloct * 100 / 100;
		double tnovp = totalnov * 100 / 100;
		double tdecp = totaldec * 100 / 100;
		HttpSession mysession = request.getSession(true);
		mysession.setAttribute("tjanp", tjanp);
		mysession.setAttribute("tfebp", tfebp);
		mysession.setAttribute("tmarp", tmarp);
		mysession.setAttribute("taprp", taprp);
		mysession.setAttribute("tmayp", tmayp);
		mysession.setAttribute("tjunp", tjunp);
		mysession.setAttribute("tjulp", tjulp);
		mysession.setAttribute("taugp", taugp);
		mysession.setAttribute("tsepp", tsepp);
		mysession.setAttribute("toctp", toctp);
		mysession.setAttribute("tnovp", tnovp);
		mysession.setAttribute("tdecp", tdecp);

		/*
		 * mv.addObject("tjanp", tjanp); mv.addObject("tfebp", tfebp);
		 * mv.addObject("tmarp", tmarp); mv.addObject("taprp", taprp);
		 * mv.addObject("tmayp", tmayp); mv.addObject("tjunp", tjunp);
		 * mv.addObject("tjulp", tjulp); mv.addObject("taugp", taugp);
		 * mv.addObject("tsepp", tsepp); mv.addObject("toctp", toctp);
		 * mv.addObject("tnovp", tnovp); mv.addObject("tdecp", tdecp);
		 */
		mv.setViewName("A_chart.jsp");
		return mv;
	}

	@RequestMapping("/A_login_code")
	public String A_login_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Admin admin = null;
		if ((admin = adminService.getAllAdmin(email, password)) != null) {
			HttpSession mysession = request.getSession(true);
			mysession.setAttribute("admin_id", admin.admin_id);
			return "redirect:/A_index";

		} else {
			return "redirect:/A_login";
		}
	}

	@RequestMapping("/A_index")
	public ModelAndView A_index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();

		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list1 = adminService.viewBuyer();
		mv.addObject("list1", list1);
		int list1_len = list1.size();
		mv.addObject("list1_len", list1_len);

		List list2 = adminService.viewVdesigner();
		mv.addObject("list2", list2);
		int list2_len = list2.size();
		mv.addObject("list2_len", list2_len);
		List list3 = adminService.viewCnorder();
		mv.addObject("list3", list3);
		int list3_len = list3.size();
		mv.addObject("list3_len", list3_len);
		List list4 = adminService.getAllPendingCnorder();
		mv.addObject("list4", list4);
		int list4_len = list4.size();
		mv.addObject("list4_len", list4_len);
		List listpdes= adminService.viewPdesigner();
		mv.addObject("listpdes", listpdes);

		//**************************
		List lists = adminService.viewCat();
		int len = lists.size();

		List listb = adminService.viewCnorder();

		double a = 0, b = 0, c = 0, d = 0, others = 0;

		for (int i = 0; i < listb.size(); i++) {
			Confirm_order cnorder= (Confirm_order) listb.get(i);
			String date = cnorder.design.subcat.cat.cat_name;

			if (date.contains("Cards"))
				a = a + 1;
			else if (date.contains("Banners And Posters"))
				b = b + 1;
			else if (date.contains("Printed Clothing"))
				c = c + 1;
			else
				others = others + 1;
		}

		double ta = a * 100 / (a + b + c + others);
		double tb = b * 100 / (a + b + c + others);
		double tc = c * 100 / (a + b + c + others);
		double tothers = others * 100 / (a + b + c + others);
		HttpSession mysession = request.getSession(true);
		mysession.setAttribute("ta", ta);
		mysession.setAttribute("tb", tb);
		mysession.setAttribute("tc", tc);
		mysession.setAttribute("tothers", tothers);

	
		//***********************
		List list = adminService.viewCnorder();

		float totaljan = 0, totalfeb = 0, totalmar = 0, totalapr = 0, totalmay = 0, totaljun = 0, totaljul = 0,
				totalaug = 0, totalsep = 0, totaloct = 0, totalnov = 0, totaldec = 0;

		for (int i = 0; i < list.size(); i++) {
			Confirm_order cnorder = (Confirm_order) list.get(i);
			String date= cnorder.date;
			float date1 = (Float.parseFloat(cnorder.discount)*Float.parseFloat(cnorder.qty));

			if (date.contains("Jan"))
				totaljan = totaljan + date1;
			if (date.contains("Feb"))
				totalfeb = totalfeb + date1;
			if (date.contains("Mar"))
				totalmar = totalmar + date1;
			if (date.contains("Apr"))
				totalapr = totalapr + date1;
			if (date.contains("May"))
				totalmay = totalmay + date1;
			if (date.contains("Jun"))
				totaljun = totaljun + date1;
			if (date.contains("Jul"))
				totaljul = totaljul + date1;
			if (date.contains("Aug"))
				totalaug = totalaug + date1;
			if (date.contains("Sep"))
				totalsep = totalsep + date1;
			if (date.contains("Oct"))
				totaloct = totaloct + date1;
			if (date.contains("Nov"))
				totalnov = totalnov + date1;
			if (date.contains("Dec"))
				totaldec = totaldec + date1;

		}

		float tjanp = totaljan * 100 / 100;
		float tfebp = totalfeb * 100 / 100;
		float tmarp = totalmar * 100 / 100;
		float taprp = totalapr * 100 / 100;
		float tmayp = totalmay * 100 / 100;
		float tjunp = totaljun * 100 / 100;
		float tjulp = totaljul * 100 / 100;
		float taugp = totalaug * 100 / 100;
		float tsepp = totalsep * 100 / 100;
		float toctp = totaloct * 100 / 100;
		float tnovp = totalnov * 100 / 100;
		float tdecp = totaldec * 100 / 100;

		mv.addObject("tjanp", tjanp);
		mv.addObject("tfebp", tfebp);
		mv.addObject("tmarp", tmarp);
		mv.addObject("taprp", taprp);
		mv.addObject("tmayp", tmayp);
		mv.addObject("tjunp", tjunp);
		mv.addObject("tjulp", tjulp);
		mv.addObject("taugp", taugp);
		mv.addObject("tsepp", tsepp);
		mv.addObject("toctp", toctp);
		mv.addObject("tnovp", tnovp);
		mv.addObject("tdecp", tdecp);

		mv.setViewName("A_index.jsp");
		return mv;
	}
	// *******************************************Category******************************************************
	@RequestMapping("/A_add_cat")
	public ModelAndView addCat() {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		mv.setViewName("A_add_cat.jsp");
		return mv;
	}

	@RequestMapping("/A_add_cat_code")
	public String A_add_cat_code(HttpServletRequest request, HttpServletResponse response) {
		String catname = request.getParameter("catname");
		String catphoto = request.getParameter("catphoto");

		Category cat = new Category(catname, catphoto);
		adminService.addCat(cat);

		return "redirect:/A_view_cat";

	}

	@RequestMapping("/A_edit_cat/{id}")
	public ModelAndView A_edit_cat(@PathVariable("id") int id) {
		List list = adminService.editCat(id);
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		mv.setViewName("../A_edit_cat.jsp");
		mv.addObject("list", list);

		return mv;

	}

	@RequestMapping("/updateCat")
	public String updateCat(HttpServletRequest request, HttpServletResponse response) {
		String catname = request.getParameter("catname");
		int cat_id = Integer.parseInt(request.getParameter("cat_id"));

		String catphoto = "";
		if (request.getParameter("catphoto") != "") {
			catphoto = request.getParameter("catphoto");
			Category cat = new Category(cat_id, catname, catphoto);
			adminService.updateCat(cat);

		} else {
			catphoto = request.getParameter("oldphoto");
			Category cat = new Category(cat_id, catname, catphoto);
			adminService.updateCat(cat);

		}

		return "redirect:/A_view_cat";

	}

	@RequestMapping("/A_view_cat")
	public ModelAndView A_view_cat() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		mv.setViewName("A_view_cat.jsp");

		List list = adminService.viewCat();
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping("/A_delete_cat/{cat_id}")
	public String A_delete_cat(@PathVariable("cat_id") int cat_id) {
		adminService.deleteCat(cat_id);
		return "redirect:/A_view_cat";
	}

	// *******************************************Subcat******************************************************
	@RequestMapping("/A_add_subcat")
	public ModelAndView A_add_subcat() {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewCat();
		mv.addObject("list", list);

		mv.setViewName("A_add_subcat.jsp");
		return mv;
	}

	@RequestMapping("/A_add_subcat_code")
	public String addSubcat_code(HttpServletRequest request, HttpServletResponse response) {
		String subcatname = request.getParameter("subcatname");
		String catname = request.getParameter("catname");
		int catname1 = Integer.parseInt(catname);
		Category cat = adminService.getCat(catname1);

		Subcat subcat = new Subcat(subcatname, cat);
		adminService.addSubcat(subcat);

		return "redirect:/A_view_subcat";
	}

	@RequestMapping("/A_edit_subcat/{id}")
	public ModelAndView A_edit_subcat(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewCat();
		mv.addObject("list", list);
		List list1 = adminService.editSubcat(id);
		mv.addObject("list1", list1);

		mv.setViewName("../A_edit_subcat.jsp");

		return mv;

	}

	@RequestMapping("/updateSubcat")
	public String updateSubcat(HttpServletRequest request, HttpServletResponse response) {
		String subcatname = request.getParameter("subcatname");
		String catname = request.getParameter("catname");
		int subcat_id = Integer.parseInt(request.getParameter("subcat_id"));
		int catname1 = Integer.parseInt(catname);
		Category cat = adminService.getCat(catname1);

		Subcat subcat = new Subcat(subcat_id, subcatname, cat);
		adminService.updateSubcat(subcat);

		return "redirect:/A_view_subcat";

	}

	@RequestMapping("/A_view_subcat")
	public ModelAndView A_view_subcat() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewSubcat();
		mv.addObject("list", list);

		mv.setViewName("A_view_subcat.jsp");

		return mv;
	}

	@RequestMapping("/A_delete_subcat/{subcat_id}")
	public String A_delete_subcat(@PathVariable("subcat_id") int subcat_id) {
		adminService.deleteSubcat(subcat_id);
		return "redirect:/A_view_subcat";
	}

	// *******************************************Review******************************************************

	// *******************************************Confirm_order******************************************************

	// *******************************************Designer******************************************************

	// *******************************************Design******************************************************

	// *******************************************Discount******************************************************

	// *******************************************Feedback******************************************************
	@RequestMapping("/A_view_feedback")
	public ModelAndView A_view_feedback() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewFeedback();
		mv.addObject("list", list);

		mv.setViewName("A_view_feedback.jsp");

		return mv;
	}

	@RequestMapping("/A_view_buyer")
	public ModelAndView A_view_buyer() {

		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list = adminService.viewBuyer();
		mv.addObject("list", list);

		mv.setViewName("A_view_buyer.jsp");

		return mv;
	}

	@RequestMapping("/A_delete_feedback/{f_id}")
	public String A_delete_feedback(@PathVariable("f_id") int f_id) {
		adminService.deleteFeedback(f_id);
		return "redirect:/A_view_feedback";
	}

	@RequestMapping("/A_delete_buyer/{b_id}")
	public String A_delete_buyer(@PathVariable("b_id") int b_id) {
		adminService.deleteBuyer(b_id);
		return "redirect:/A_view_buyer";
	}

	@RequestMapping("/A_edit_cnstatus/{id}")
	public ModelAndView A_edit_cnstatus(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView();
		List hlist1 = adminService.viewPdesigner();
		mv.addObject("hlist1", hlist1);
		int hlist1_len = hlist1.size();
		mv.addObject("hlist1_len", hlist1_len);

		List list1 = adminService.editCnstatus(id);
		mv.addObject("list1", list1);

		mv.setViewName("../A_edit_cnstatus.jsp");

		return mv;

	}

	@RequestMapping("/A_update_cnstatus")
	public String A_update_cnstatus(HttpServletRequest request, HttpServletResponse response) {
		String cnstatus = request.getParameter("cnstatus");
		int cnorder_id = Integer.parseInt(request.getParameter("cnorder_id"));
		Confirm_order cno = adminService.getCnorder(cnorder_id);

		Confirm_order cnorder = new Confirm_order(cnorder_id, cnstatus, cno.qty, cno.companyname, cno.name, cno.address,
				cno.other_detail, cno.email, cno.contact, cno.date, cno.picture_1, cno.picture_2, cno.discount,
				cno.design, cno.buyer);
		adminService.updateCnstatus(cnorder);

		return "redirect:/A_view_subcat";

	}

}
