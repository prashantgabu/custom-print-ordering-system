package com.springmvc;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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

public class designer_controller {
	@Autowired
	DesignerService designerService;

//************************************************Designer***********************************************************
	@RequestMapping("/d_register")
	public ModelAndView d_register() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("d_register.jsp");
		return mv;
	}

	@RequestMapping("/d_register_code")
	public String d_register_code(HttpServletRequest request, HttpServletResponse response) {
		String dname = request.getParameter("dname");
		String demail = request.getParameter("demail");
		String dpwd = request.getParameter("dpwd");
		String dhaddress = request.getParameter("dhaddress");
		String dcontact = request.getParameter("dcontact");
		String dcity = request.getParameter("dcity");
		String dphoto = request.getParameter("dphoto");
		String dgst = request.getParameter("dgst");

		String dstorename = request.getParameter("pstorename");
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(6);

		for (int i = 0; i < 6; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}
		List list = designerService.getpassword(demail);

		String email1 = "";
		for (int i = 0; i < list.size(); i++) {
			Designer designer= (Designer) list.get(i);
			email1 = designer.email;
			if (demail.equals(email1)) {

				return "redirect:/d_register";
			}

		}

		String password = sb.toString();

		Designer designer = new Designer(dname, demail, password, dhaddress, "None", "status", dcity, dphoto, dgst,
				dstorename, dcontact);
		designerService.addDesigner(designer);

		// *************** register email
		try {
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			props.put("mail.debug", "true");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.localhost", "yoursite.com");

			javax.mail.Session s = javax.mail.Session.getInstance(props, null);
			s.setDebug(true);

			MimeMessage message = new MimeMessage(s);
			InternetAddress from = new InternetAddress("handro1@msn.com", "Printsalive");
			InternetAddress to = new InternetAddress(demail);

			message.setSentDate(new java.util.Date());
			message.setFrom(from);
			message.addRecipient(Message.RecipientType.TO, to);

			message.setSubject("Your Password");
			message.setContent("Your password is " + password, "text/html");

			Transport tr = s.getTransport("smtp");
			tr.connect("smtp.gmail.com", "heydoctorinfo@gmail.com", "pristineitis53");
			message.saveChanges();
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
		} catch (Exception e) {
		}

		return "redirect:/d_login.jsp";

	}

	@RequestMapping("/d_login")
	public ModelAndView d_login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("d_login.jsp");
		return mv;
	}

	@RequestMapping("/d_view_review/{id}")
	public ModelAndView A_view_review(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List list = designerService.getAllReview(id);
			mv.addObject("list", list);
			mv.setViewName("../d_view_review.jsp");

		}
		return mv;

	}

	@RequestMapping("/d_login_code")
	public String d_login_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Designer designer = null;
		if ((designer = designerService.getAllDesigner(email, password)) != null) {
			HttpSession mysession = request.getSession(true);
			mysession.setAttribute("designer_id", designer.designer_id);
			mysession.setAttribute("designer_name", designer.name);
			mysession.setAttribute("designer_storename", designer.storename);
			mysession.setAttribute("designer_email", designer.email);
			mysession.setAttribute("designer_password", designer.password);
			return "redirect:/d_index";
		} else {
			return "redirect:/d_login";
		}
	}

	@RequestMapping(value = "/d_logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession mysession = request.getSession(true);
		mysession.removeAttribute("designer_id");
		mysession.removeAttribute("designer_name");
		mysession.removeAttribute("designer_storename");
		mysession.removeAttribute("designer_email");
		mysession.removeAttribute("designer_password");
		return "redirect:/d_login";

	}

	@RequestMapping("/d_index")
	public ModelAndView d_index(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list1 = designerService.viewDesign();
			int list1_len = list1.size();
			mv.addObject("list1_len", list1_len);

			List list2 = designerService.viewCnorder(designer);
			int list2_len = list2.size();
			mv.addObject("list2_len", list2_len);
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);
			List list4 = designerService.getAllDisc(designer);
			int list4_len = list4.size();
			mv.addObject("list4_len", list4_len);
			mv.setViewName("d_index.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_forgot_password")
	public ModelAndView d_forgot_password() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("d_forgot_password.jsp");

		return mv;

	}

	@RequestMapping("/d_forgot_password_code")
	public String d_forgot_password_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");

		List list = designerService.getpassword(email);

		String pwd = "";
		for (int i = 0; i < list.size(); i++) {
			Designer designer = (Designer) list.get(i);
			pwd = designer.password;
		}

		// *************** register email
		try {
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			props.put("mail.debug", "true");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.localhost", "yoursite.com");

			javax.mail.Session s = javax.mail.Session.getInstance(props, null);
			s.setDebug(true);

			MimeMessage message = new MimeMessage(s);
			InternetAddress from = new InternetAddress("handro1@msn.com", "Hey Doctor");
			InternetAddress to = new InternetAddress(email);

			message.setSentDate(new java.util.Date());
			message.setFrom(from);
			message.addRecipient(Message.RecipientType.TO, to);

			message.setSubject("Your Password");
			message.setContent("Your password is " + pwd, "text/html");

			Transport tr = s.getTransport("smtp");
			tr.connect("smtp.gmail.com", "heydoctorinfo@gmail.com", "pristineitis53");
			message.saveChanges();
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
		} catch (Exception e) {
		}

		return "redirect:/d_login";

	}

	@RequestMapping("/d_change_password")
	public ModelAndView d_change_password(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			mv.setViewName("d_change_password.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_change_password_code")
	public String d_change_password_code(HttpServletRequest request, HttpServletResponse response) {

		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		String pwd = "";
		List list = designerService.changePwd(oldpwd);
		for (int i = 0; i < list.size(); i++) {
			Designer designer = (Designer) list.get(i);
			pwd = designer.password;

		}
		if (pwd.equals(oldpwd)) {
			HttpSession mysession1 = request.getSession();
			int designer = Integer.parseInt(mysession1.getAttribute("designer_id").toString());

			Designer designer1 = designerService.getDesigner(designer);
			Designer designer2 = new Designer(designer, designer1.name, designer1.email, newpwd, designer1.address,
					designer1.sub_status, designer1.status, designer1.city, designer1.propic, designer1.gstno,
					designer1.storename, designer1.contact);
			designerService.updateProfile(designer2);

			return "redirect:/d_index";
		} else {
			return "redirect:/d_change_password";
		}
	}

	@RequestMapping("/d_edit_profile/{id}")
	public ModelAndView d_edit_profile(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);
			List list1 = designerService.editProfile(id);
			mv.addObject("list1", list1);

			mv.setViewName("../d_edit_profile.jsp");
		}
		return mv;

	}

	@RequestMapping("/updateProfile")
	public String updateProfile(HttpServletRequest request, HttpServletResponse response) {
		String dname = request.getParameter("dname");
		String demail = request.getParameter("demail");
		String dpwd = request.getParameter("dpassword");
		String dhaddress = request.getParameter("detail");
		String dcontact = request.getParameter("dcontact");
		String dcity = request.getParameter("dcity");
		String dphoto = request.getParameter("dphoto");
		String dgst = request.getParameter("dgst");
		String sub_status = request.getParameter("sub_status");
		String dstorename = request.getParameter("dstorename");

		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
		// ************************* end get

		Designer designer1 = new Designer(designer_id, dname, demail, dpwd, dhaddress, "None", "Pending", dcity, dphoto,
				dgst, dstorename, dcontact);
		designerService.updateProfile(designer1);

		return "redirect:/d_index";

	}

	// *******************************************Message******************************************************
	@RequestMapping("/d_msg")
	public ModelAndView d_msg(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);
			mv.setViewName("d_msg.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_msg/{id}")
	public ModelAndView d_msg(@PathVariable("id") int id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		// ***************** get designer id from login

		HttpSession mysession = request.getSession();

		// ************************* end get
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer_id);
			mv.addObject("hlist1", hlist1);
			List list = designerService.viewMessage(designer_id);
			mv.addObject("list", list);

			String name = designerService.getBuyer(id);
			mv.addObject("name", name);
			mv.addObject("buyer_id", id);

			mv.setViewName("../d_msg.jsp");

		}
		return mv;

	}

	@RequestMapping("/d_view_buyer/{id}")
	public ModelAndView d_view_buyer(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			// ************************* end get

			List list = designerService.viewBuyer(id);
			mv.addObject("list", list);

			mv.setViewName("../d_view_buyer.jsp");
		}
		return mv;

	}

	@RequestMapping("/d_add_msg_code")
	public String d_add_msg_code(HttpServletRequest request, HttpServletResponse response) {
		String msg = request.getParameter("msg");
		String file = request.getParameter("file");
		Date date = new Date();
		String date1 = date.toString();
		int buyer_id = Integer.parseInt(request.getParameter("buyer_id"));
		Buyer buyer = designerService.getBuyer1(buyer_id);

		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
		// ************************* end get

		Designer designer = designerService.getDesigner(designer_id);
		com.springmvc.Message message = new com.springmvc.Message(msg, buyer, designer, date1, file, "designer");
		designerService.addMsg(message);

		return "redirect:/d_view_order";
	}

	// *******************************************Design******************************************************

	@RequestMapping("/d_add_design")
	public ModelAndView d_add_design(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);
			List list = designerService.viewSubcat();
			mv.addObject("list", list);

			List list1 = designerService.viewCat();
			mv.addObject("list1", list1);
			mv.setViewName("d_add_design.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_add_design_code")
	public String d_add_design_code(HttpServletRequest request, HttpServletResponse response) {
		String designname = request.getParameter("designname");
		String price = request.getParameter("price");
		String photo_1 = request.getParameter("photo-1");
		String photo_2 = request.getParameter("photo-2");
		String photo_3 = request.getParameter("photo-3");
		String length = request.getParameter("length");
		String width = request.getParameter("width");
		String quantity = request.getParameter("quantity");
		String detail = request.getParameter("detail");
		int subcat = Integer.parseInt(request.getParameter("subcat"));

		Subcat subcat1 = designerService.getSubcat(subcat);

		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
		// ************************* end get

		Designer designer = designerService.getDesigner(designer_id);

		Design design = new Design(designname, photo_1, photo_2, photo_3, price, detail, quantity, length, width,
				designer, subcat1);
		designerService.addDesign(design);

		return "redirect:/d_view_design";
	}

	@RequestMapping("/d_edit_design/{id}")
	public ModelAndView d_edit_design(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list = designerService.viewSubcat();
			mv.addObject("list", list);
			List list1 = designerService.editDesign(id);
			mv.addObject("list1", list1);
		}
		mv.setViewName("../d_edit_design.jsp");

		return mv;

	}

	@RequestMapping("/updateDesign")
	public String updateDesign(HttpServletRequest request, HttpServletResponse response) {
		String designname = request.getParameter("designname");
		String price = request.getParameter("price");
		String length = request.getParameter("length");
		String width = request.getParameter("width");
		String quantity = request.getParameter("quantity");
		String detail = request.getParameter("detail");
		int subcat = Integer.parseInt(request.getParameter("subcat"));
		int design_id = Integer.parseInt(request.getParameter("design_id"));
		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
		// ************************* end get

		String photo_1 = "";
		String photo_2 = "";
		String photo_3 = "";
		if (request.getParameter("photo-1") != "") {
			photo_1 = request.getParameter("photo-1");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		} else {
			photo_1 = request.getParameter("oldphoto-1");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		}
		if (request.getParameter("photo-2") != "") {
			photo_2 = request.getParameter("photo-2");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		} else {
			photo_2 = request.getParameter("oldphoto-2");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		}
		if (request.getParameter("photo-3") != "") {
			photo_3 = request.getParameter("photo-3");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		} else {
			photo_3 = request.getParameter("oldphoto-3");

			Designer designer = designerService.getDesigner(designer_id);

			Subcat subcat1 = designerService.getSubcat(subcat);

			Design design = new Design(design_id, designname, photo_1, photo_2, photo_3, price, detail, quantity,
					length, width, designer, subcat1);
			designerService.updateDesign(design);

		}

		return "redirect:/d_view_design";

	}

	@RequestMapping("/d_view_design")
	public ModelAndView d_view_design(HttpServletRequest request, HttpServletResponse resposne) {

		ModelAndView mv = new ModelAndView();
		// ***************** get Designer id from login

		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			// ************************* end get
			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list = designerService.viewDesign(designer_id);
			mv.addObject("list", list);

			mv.setViewName("d_view_design.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_delete_design/{design_id}")
	public String d_delete_design(@PathVariable("design_id") int design_id) {
		designerService.deleteDesign(design_id);
		return "redirect:/d_view_design";
	}

	// *******************************************Review******************************************************

	@RequestMapping("/d_view_review")
	public ModelAndView d_view_review(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List list = designerService.viewReview();
			mv.addObject("list", list);

			mv.setViewName("d_view_review.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_delete_review/{r_id}")
	public String d_delete_review(@PathVariable("r_id") int r_id) {
		designerService.deleteReview(r_id);
		return "redirect:/d_view_review";
	}

	// *******************************************Discount******************************************************

	@RequestMapping("/d_add_discount")
	public ModelAndView d_add_disocunt(HttpServletRequest request, HttpServletResponse resposne) {

		ModelAndView mv = new ModelAndView();
		// ***************** get Designer id from login

		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			// ************************* end get
			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List dislist = designerService.viewDiscount();
			mv.addObject("dislist", dislist);

			List list = designerService.viewDesign(designer_id);
			mv.addObject("list", list);
			mv.setViewName("d_add_discount.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_add_discount_code")
	public String d_add_discount_code(HttpServletRequest request, HttpServletResponse response) {
		String disamt = request.getParameter("disamt");
		String details = request.getParameter("details");
		int design = Integer.parseInt(request.getParameter("designname"));

		Design design1 = designerService.getDesign(design);
		Discount discount = new Discount(disamt, details, design1);
		designerService.addDiscount(discount);

		return "redirect:/d_view_discount";
	}

	@RequestMapping("/d_edit_discount/{id}")
	public ModelAndView d_edit_discount(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();

		// ***************** get Designer id from login

		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			// ************************* end get
			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list = designerService.viewDesign(designer_id);
			mv.addObject("list", list);
			List list1 = designerService.editDiscount(id);
			mv.addObject("list1", list1);
			mv.addObject("designer_id", designer_id);
			mv.setViewName("../d_edit_discount.jsp");
		}
		return mv;

	}

	@RequestMapping("/updateDiscount")
	public String updateDiscount(HttpServletRequest request, HttpServletResponse response) {
		String disamt = request.getParameter("disamt");
		String details = request.getParameter("details");
		int dis_id = Integer.parseInt(request.getParameter("dis_id"));
		int design = Integer.parseInt(request.getParameter("designname"));
		Design design1 = designerService.getDesign(design);
		Discount discount = new Discount(dis_id, disamt, details, design1);
		designerService.updateDiscount(discount);

		return "redirect:/d_view_discount";

	}

	@RequestMapping("/d_view_discount")

	public ModelAndView d_view_discount(HttpServletRequest request, HttpServletResponse resposne) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list = designerService.viewDiscount();
			mv.addObject("list", list);
			mv.setViewName("d_view_discount.jsp");
		}
		return mv;
	}

	@RequestMapping("/d_delete_discount/{discount_id}")
	public String d_delete_discount(@PathVariable("discount_id") int discount_id) {
		designerService.deleteDiscount(discount_id);
		return "redirect:/d_view_discount";
	}
	// *******************************************Feedback******************************************************

	@RequestMapping("/d_add_feedback")
	public ModelAndView d_add_feedback(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			mv.setViewName("d_add_feedback.jsp");

		}
		return mv;
	}

	@RequestMapping("/d_add_feedback_code")
	public String d_add_feedback_code(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String msg = request.getParameter("msg");
		String email = request.getParameter("email");
		Date d1 = new Date();
		String d = d1.toString();
		Feedback feedback = new Feedback(d, name, email, msg);
		designerService.addFeedback(feedback);
		return "redirect:/d_index";
	}

	// ***********************Confirm Order
	@RequestMapping("/d_view_order")
	public ModelAndView d_view_order(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession();
		if (mysession.getAttribute("designer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {
			int designer = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List list3 = designerService.getAllPendingCnorder(designer);
			int list3_len = list3.size();
			mv.addObject("list3", list3);
			mv.addObject("list3_len", list3_len);

			int designer_id = Integer.parseInt(mysession.getAttribute("designer_id").toString());
			List hlist1 = designerService.viewDesigner(designer);
			mv.addObject("hlist1", hlist1);

			List list = designerService.viewOrder(designer);
			mv.addObject("list", list);
			mv.addObject("designer_id", designer_id);
			mv.setViewName("d_view_order.jsp");
		}
		return mv;
	}

}
