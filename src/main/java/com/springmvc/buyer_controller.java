package com.springmvc;

import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage;

@Controller
public class buyer_controller {
	@Autowired

	BuyerService buyerService;

	// *******************************************Buyer******************************************************
	@RequestMapping("/b_search")
	public ModelAndView b_search(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			String search = request.getParameter("search");

			List list = buyerService.getAllSearch(search);
			mv.addObject("list", list);
			if (list.isEmpty()) {
				String msg = "No items";
				mv.addObject("msg", msg);
			}

			mv.setViewName("b_cardlist.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_register")
	public ModelAndView b_register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b_register.jsp");
		return mv;
	}

	@RequestMapping("/b_register_code")
	public String b_register_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String lname = request.getParameter("lname");
		String fname = request.getParameter("fname");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
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
		List list = buyerService.getpassword(email);

		String email1 = "";
		for (int i = 0; i < list.size(); i++) {
			Buyer buyer = (Buyer) list.get(i);
			email1 = buyer.email;
			if (email.equals(email1)) {

				return "redirect:/b_register";
			}

		}

		String password = sb.toString();
		Buyer buyer = new Buyer(email, password, fname, lname, address, null, dob, null, null, "pending", null, gender);
		buyerService.addBuyer(buyer);

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
			InternetAddress to = new InternetAddress(email);

			message.setSentDate(new java.util.Date());
			message.setFrom(from);
			message.addRecipient(Message.RecipientType.TO, to);

			message.setSubject("Your Password");
			message.setContent("Your password is " + password, "text/html");

			Transport tr = s.getTransport("smtp");
			tr.connect("smtp.gmail.com", "", "");
			message.saveChanges();
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
		} catch (Exception e) {
		}

		return "redirect:/b_login.jsp";

	}

	@RequestMapping("/b_change_password")
	public ModelAndView b_change_password(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			mv.setViewName("b_change_password.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_change_password_code")
	public String b_change_password_code(HttpServletRequest request, HttpServletResponse response) {

		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		String pwd = "";
		List list = buyerService.changePwd(oldpwd);
		for (int i = 0; i < list.size(); i++) {
			Buyer buyer = (Buyer) list.get(i);
			pwd = buyer.password;

		}
		System.out.print(oldpwd);
		System.out.print(pwd);
		if (pwd != oldpwd) {
			HttpSession mysession1 = request.getSession();
			int buyer_id = Integer.parseInt(mysession1.getAttribute("buyer_id").toString());

			Buyer buyer = buyerService.getBuyer(buyer_id);
			Buyer buyer1 = new Buyer(buyer_id, buyer.email, newpwd, buyer.fname, buyer.lname, buyer.address, buyer.city,
					buyer.dob, buyer.fav, buyer.propic, "Verified", buyer.state, buyer.gender);
			buyerService.updateProfile(buyer1);

			return "redirect:/b_index";
		} else {
			return "redirect:/b_change_password";
		}
	}

	@RequestMapping("/b_forgot_password")
	public ModelAndView b_forgot_password() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b_forgot_password.jsp");
		return mv;
	}

	@RequestMapping("/b_forgot_password_code")
	public String b_forgot_password_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");

		List list = buyerService.getpassword(email);
		if (list.isEmpty()) {
			return "redirect:/b_forgot_password";
		}
		String pwd = "";
		for (int i = 0; i < list.size(); i++) {
			Buyer buyer = (Buyer) list.get(i);
			pwd = buyer.password;
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
			InternetAddress from = new InternetAddress("handro1@msn.com", "Printsalive");
			InternetAddress to = new InternetAddress(email);

			message.setSentDate(new java.util.Date());
			message.setFrom(from);
			message.addRecipient(Message.RecipientType.TO, to);

			message.setSubject("Your Password");
			message.setContent("Your password is " + pwd, "text/html");

			Transport tr = s.getTransport("smtp");
			tr.connect("smtp.gmail.com", "", "");
			message.saveChanges();
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
		} catch (Exception e) {
		}

		return "redirect:/b_login";

	}

	@RequestMapping("/b_login")
	public ModelAndView b_login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b_login.jsp");
		return mv;
	}

	@RequestMapping("/b_login_code")
	public String b_login_code(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Buyer buyer = null;
		if ((buyer = buyerService.getAllBuyer(email, password)) != null) {
			HttpSession mysession = request.getSession(true);
			mysession.setAttribute("buyer_id", buyer.buyer_id);
			mysession.setAttribute("buyer_fname", buyer.fname);
			mysession.setAttribute("buyer_lname", buyer.lname);
			mysession.setAttribute("buyer_email", buyer.email);
			mysession.setAttribute("buyer_pwd", buyer.password);
			return "redirect:/b_index";

		} else {
			Cookie c[] = request.getCookies();
			int cnt = 0;
			if (c != null) {
				for (int a = 0; a < c.length; a++) {
					if (c[a].getName().equals("count")) {
						cnt = Integer.parseInt(c[a].getValue());
						break;
					}
				}
				cnt++;
				Cookie cwrite = new Cookie("count", String.valueOf(cnt));
				cwrite.setMaxAge(60);
				response.addCookie(cwrite);
			} else {
				Cookie cwrite = new Cookie("count", "0");
				cwrite.setMaxAge(60);
				response.addCookie(cwrite);
			}
			return "redirect:/b_login";
		}
	}

	@RequestMapping("/b_index")
	public ModelAndView b_index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);

		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
		List hlist2 = buyerService.viewAllBuyer(buyer_id);
		mv.addObject("hlist2", hlist2);

		List flexlist = buyerService.getAllDiscount();
		mv.addObject("flexlist", flexlist);

		List cartlist = buyerService.viewCart(buyer_id);
		mv.addObject("cartlist", cartlist);

		List list = buyerService.getAllCategory();
		mv.addObject("list", list);
		mv.setViewName("b_index.jsp");
		return mv;
	}

	@RequestMapping("/v_index")
	public ModelAndView v_index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();

		List flexlist = buyerService.getAllDiscount();
		mv.addObject("flexlist", flexlist);

		List list = buyerService.getAllCategory();
		mv.addObject("list", list);
		mv.setViewName("v_index.jsp");
		return mv;
	}

	@RequestMapping("/b_edit_profile/{id}")
	public ModelAndView b_edit_profile(@PathVariable("id") int id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			mv.addObject("buyer_id", buyer_id);
			List list1 = buyerService.editProfile(id);
			mv.addObject("list1", list1);

			mv.setViewName("../b_edit_profile.jsp");
		}
		return mv;

	}

	@RequestMapping("/b_invoice/{cid}")
	public ModelAndView b_invoice(@PathVariable("cid") int cid, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			List list1 = buyerService.viewOrderById(cid, buyer_id);
			mv.addObject("list1", list1);

			mv.setViewName("../b_invoice.jsp");
		}
		return mv;

	}

	@RequestMapping("/updateBuyerProfile")
	public String updateBuyerProfile(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String lname = request.getParameter("lname");
		String fname = request.getParameter("fname");
		String password = request.getParameter("password");
		String city = request.getParameter("city");
		String propic = request.getParameter("propic");
		String dob = request.getParameter("dob");
		String state = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		// ***************** get buyer id from login

		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
		// ************************* end get
		Buyer buyer = new Buyer(buyer_id, email, password, fname, lname, address, city, dob, "0", propic, "Active",
				state, gender);
		buyerService.updateProfile(buyer);

		return "redirect:/b_index";

	}

	// *******************************************Cart******************************************************

	@RequestMapping("/b_addCart")
	public ModelAndView b_addCart(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			mv.setViewName("b_addCart.jsp");
		}
		return mv;
	}

	@RequestMapping(value = "/b_logout", method = RequestMethod.GET)
	public String b_logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession mysession = request.getSession(true);
		mysession.removeAttribute("buyer_id");
		return "redirect:/b_login";

	}

	@RequestMapping("/b_add_card_cart")
	public ModelAndView b_add_card_cart(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			mv.setViewName("b_add_card_cart.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_add_tshirtcart_code")
	public String b_add_tshirtcart_code(HttpServletRequest request, HttpServletResponse resposne) {
		ModelAndView mv = new ModelAndView();
		String quant = request.getParameter("quant");
		String picture_1 = request.getParameter("picture_1");
		String picture_2 = request.getParameter("picture_2");
		String dis = request.getParameter("dis");

		int design_id = Integer.parseInt(request.getParameter("design_id"));
		Design design = buyerService.getDesign(design_id);
		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());

		Buyer buyer = buyerService.getBuyer(buyer_id);

		Cart cart = new Cart(quant, null, null, null, null, null, null, null, picture_1, picture_2, dis, buyer, design);
		buyerService.addCart(cart);
		return "redirect:/b_view_cart";
	}

	@RequestMapping("/b_add_cardcart_code")
	public String b_add_cardcart_code(HttpServletRequest request, HttpServletResponse resposne) {

		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {

			return "redirect:/b_login";
		} else {
			String companyname = request.getParameter("companyname");
			String companymsg = request.getParameter("companymsg");
			String contact = request.getParameter("contact");
			String fullname = request.getParameter("fullname");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String picture_1 = request.getParameter("picture_1");
			String quant = request.getParameter("quant");
			String dis = request.getParameter("dis");

			int design_id = Integer.parseInt(request.getParameter("design_id"));
			Design design = buyerService.getDesign(design_id);
			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			Buyer buyer = buyerService.getBuyer(buyer_id);
			Cart cart = new Cart(quant, null, companyname, fullname, address, companymsg, email, contact, picture_1,
					null, dis, buyer, design);
			buyerService.addCart(cart);
			return "redirect:/b_view_cart";

		}
	}

	@RequestMapping("/b_add_bannercart_code")
	public String b_add_bannercart_code(HttpServletRequest request, HttpServletResponse resposne) {
		ModelAndView mv = new ModelAndView();
		String quant = request.getParameter("quant");
		String picture_1 = request.getParameter("picture_1");
		String picture_2 = request.getParameter("picture_2");
		String dis = request.getParameter("dis");

		int design_id = Integer.parseInt(request.getParameter("design_id"));
		Design design = buyerService.getDesign(design_id);
		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
		Buyer buyer = buyerService.getBuyer(buyer_id);
		Cart cart = new Cart(quant, null, null, null, null, null, null, null, picture_1, picture_2, dis, buyer, design);
		buyerService.addCart(cart);
		return "redirect:/b_view_cart";
	}

	@RequestMapping("/b_view_cart")
	public ModelAndView b_view_cart(HttpServletRequest request, HttpServletResponse resposne) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			List list = buyerService.viewCart(buyer_id);
			mv.addObject("list", list);

			mv.setViewName("b_view_cart.jsp");
		}
		return mv;
	}
	// *******************************************Single******************************************************

	@RequestMapping("/b_single/{design_id}")
	public ModelAndView b_single(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			List list = buyerService.getAllDesign(design_id);
			mv.addObject("list", list);
			mv.setViewName("../b_single.jsp");
		}
		return mv;
	}

	@RequestMapping("b_cardlist")
	public ModelAndView b_cardlist(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			List list = buyerService.getAllCardDesign();
			mv.addObject("list", list);

			List listdis = buyerService.getAllDiscount();
			mv.addObject("listdis", listdis);

			mv.setViewName("b_cardlist.jsp");
		}
		return mv;
	}

	@RequestMapping("b_tshirtlist")
	public ModelAndView b_tshirtlist(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			List listdis = buyerService.getAllDiscount();
			mv.addObject("listdis", listdis);

			List list = buyerService.getAllTshirtDesign();
			mv.addObject("list", list);

			mv.setViewName("b_tshirtlist.jsp");
		}
		return mv;
	}

	@RequestMapping("b_otherlist")
	public ModelAndView b_otherlist(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			List listdis = buyerService.getAllDiscount();
			mv.addObject("listdis", listdis);

			List list = buyerService.getAllOtherDesign();
			mv.addObject("list", list);

			mv.setViewName("b_otherlist.jsp");
		}
		return mv;
	}

	@RequestMapping("b_bannerlist")
	public ModelAndView b_bannerlist(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			List listdis = buyerService.getAllDiscount();
			mv.addObject("listdis", listdis);

			List list = buyerService.getAllBannerDesign();
			mv.addObject("list", list);

			mv.setViewName("b_bannerlist.jsp");

		}
		return mv;
	}

	@RequestMapping("/b_single_card/{design_id}")
	public ModelAndView b_single_card(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {

			Design design = buyerService.getDesign(design_id);
			List list = buyerService.getAllDesign(design_id);
			mv.addObject("list", list);
			List listalldesign = buyerService.getAllDesign();
			mv.addObject("listalldesign", listalldesign);
			List list1 = buyerService.getAllReview(design);
			mv.addObject("list1", list1);
			int list1_len = list1.size();
			mv.addObject("rev_len", list1_len);

			List listdis = buyerService.getDiscount(design);
			mv.addObject("listdis", listdis);

			mv.setViewName("../b_single_card.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_single_banner/{design_id}")
	public ModelAndView b_single_banner(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();

		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			Design design = buyerService.getDesign(design_id);
			List listalldesign = buyerService.getAllDesign();
			mv.addObject("listalldesign", listalldesign);

			List listdis = buyerService.getDiscount(design);
			mv.addObject("listdis", listdis);
			List list1 = buyerService.getAllReview(design);
			mv.addObject("list1", list1);
			int list1_len = list1.size();
			mv.addObject("rev_len", list1_len);

			List list = buyerService.getAllDesign(design_id);
			mv.addObject("list", list);

			mv.setViewName("../b_single_banner.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_single_tshirt/{design_id}")
	public ModelAndView b_single_tshirt(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();

		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			Design design = buyerService.getDesign(design_id);
			List listalldesign = buyerService.getAllDesign();
			mv.addObject("listalldesign", listalldesign);
			List list1 = buyerService.getAllReview(design);
			mv.addObject("list1", list1);
			int list1_len = list1.size();
			mv.addObject("rev_len", list1_len);

			List list = buyerService.getAllDesign(design_id);
			mv.addObject("list", list);

			List listdis = buyerService.getDiscount(design);
			mv.addObject("listdis", listdis);
			mv.setViewName("../b_single_tshirt.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_single_other/{design_id}")
	public ModelAndView b_single_other(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			Design design = buyerService.getDesign(design_id);
			List listalldesign = buyerService.getAllDesign();
			mv.addObject("listalldesign", listalldesign);
			List list1 = buyerService.getAllReview(design);
			mv.addObject("list1", list1);
			int list1_len = list1.size();
			mv.addObject("rev_len", list1_len);

			List list = buyerService.getAllDesign(design_id);
			mv.addObject("list", list);

			List listdis = buyerService.getDiscount(design);
			mv.addObject("listdis", listdis);
			mv.setViewName("../b_single_other.jsp");
		}
		return mv;
	}
	// *******************************************Payment******************************************************

	@RequestMapping("/b_payment")
	public ModelAndView b_payment(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			List list1 = buyerService.viewAllBuyer(buyer_id);
			mv.addObject("list1", list1);
			List list = buyerService.viewCart(buyer_id);
			mv.addObject("list", list);
			mv.setViewName("b_payment.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_add_payment")
	public String b_add_payment(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());

		double checkpay = Double.parseDouble(request.getParameter("checkpay"));
		String cvv = request.getParameter("cvv");
		String exp_month = request.getParameter("exp_month");
		String exp_year = request.getParameter("exp_year");
		String number = request.getParameter("number");

		Payment payment = buyerService.getPayment(1);
		double amt = Double.parseDouble(payment.amount);
		if (checkpay <= amt) {

			payment = buyerService.getAllPayment(cvv, exp_month, exp_year, number);

			if (payment != null) {
				Buyer buyer = buyerService.getBuyer(buyer_id);

				Boolean flag = buyerService.confirmOrder(buyer, payment);
				System.out.println("yes=" + flag);
				/*
				 * int dec=Integer.parseInt(payment.amount.toString()); int t=dec-1000;
				 * System.out.print(t);
				 */

				return "redirect:/b_index";
			} else {
				return "redirect:/b_payment";
			}

		} else {
			return "redirect:/b_nomoney";
		}
	}

	@RequestMapping("/b_view_order")
	public ModelAndView b_view_order(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());

			List list = buyerService.viewOrder(buyer_id);
			mv.addObject("list", list);
			mv.setViewName("b_view_order.jsp");
		}
		return mv;
	}

	/*
	 * @RequestMapping("/b_invoice") public ModelAndView
	 * b_invoice(HttpServletRequest request, HttpServletResponse response){
	 * ModelAndView mv = new ModelAndView(); HttpSession mysession =
	 * request.getSession(); int buyer_id =
	 * Integer.parseInt(mysession.getAttribute("buyer_id").toString());
	 * 
	 * List list1 = buyerService.viewAllBuyer(buyer_id); mv.addObject("list1",
	 * list1); List list = buyerService.viewCnorderByDate(buyer_id);
	 * mv.addObject("list", list); if(list.isEmpty()) {
	 * System.out.print("EMptyuyyyyyyyyyyyyyyyyyyyyyyyyyyyy"); } List listcnorder =
	 * buyerService.viewOrder(buyer_id); mv.addObject("listcnorder", listcnorder);
	 * 
	 * mv.setViewName("b_invoice.jsp"); return mv; }
	 */

	/*
	 * @RequestMapping("/b_add_payment") public ModelAndView
	 * b_add_payment(HttpServletRequest request, HttpServletResponse response) {
	 * 
	 * ModelAndView mv = new ModelAndView(); HttpSession mysession =
	 * request.getSession(); int buyer_id =
	 * Integer.parseInt(mysession.getAttribute("buyer_id").toString()); Buyer buyer
	 * = buyerService.getBuyer(buyer_id); boolean flag =
	 * buyerService.confirmOrder(buyer);
	 * 
	 * // buyerService.addFeedback(feedback); mv.setViewName("b_view_order.jsp");
	 * return mv; }
	 */

	// *******************************************Review******************************************************

	@RequestMapping("/b_add_review/{design_id}")
	public ModelAndView b_add_review(@PathVariable("design_id") int design_id, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			Design design = buyerService.getDesign(design_id);
			mv.addObject("design_id", design_id);
			mv.setViewName("../b_add_review.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_add_review_code")
	public String b_add_review(HttpServletRequest request, HttpServletResponse response) {
		int design_id = Integer.parseInt(request.getParameter("design_id"));
		String rating = request.getParameter("rating");
		String review_msg = request.getParameter("review_msg");
		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
		Buyer buyer = buyerService.getBuyer(buyer_id);
		Design design = buyerService.getDesign(design_id);

		Date date = new Date();
		String date1 = date.toString();
		Review review = new Review(date1, review_msg, rating, buyer, design);
		buyerService.addReview(review);
		return "redirect:/b_view_order";

	}
	// *******************************************Buy_item******************************************************

	@RequestMapping("/b_addBuy_item")
	public ModelAndView b_addBuy_item() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b_addBuy_item.jsp");
		return mv;
	}

	// *******************************************Feedback******************************************************
	@RequestMapping("/b_delete_cart/{design_id}")
	public String b_delete_cart(@PathVariable("design_id") int design_id) {
		buyerService.deleteCart(design_id);
		return "redirect:/b_view_cart";
	}

	@RequestMapping("/b_add_feedback")
	public ModelAndView b_addFeedback(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			mv.setViewName("b_add_feedback.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_view_discount")

	public ModelAndView b_view_discount(HttpServletRequest request, HttpServletResponse resposne) {

		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("d_login.jsp");
		} else {

			List list = buyerService.viewDiscount();
			mv.addObject("list", list);
			mv.setViewName("b_view_discount.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_nomoney")
	public ModelAndView b_nomoney(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			mv.setViewName("b_nomoney.jsp");
		}
		return mv;
	}

	@RequestMapping("/b_add_feedback_code")
	public String b_add_feedback_code(HttpServletRequest request, HttpServletResponse response) {
		String feed_email = request.getParameter("feed_email");
		String feed_date = request.getParameter("feed_date");
		String feed_name = request.getParameter("feed_name");
		String feed_msg = request.getParameter("feed_msg");
		System.out.print(feed_name);

		Feedback feedback = new Feedback(feed_date, feed_name, feed_email, feed_msg);
		buyerService.addFeedback(feedback);
		return "redirect:/b_index";

	}

	@RequestMapping("/b_contactus")
	public ModelAndView b_contactus() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b_contactus.jsp");
		return mv;
	}

	@RequestMapping("/b_contactus_code")
	public String b_contactus_code(HttpServletRequest request, HttpServletResponse response) {
		String feed_email = request.getParameter("feed_email");
		String feed_date = request.getParameter("feed_date");
		String feed_name = request.getParameter("feed_name");
		String feed_msg = request.getParameter("feed_msg");

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
			InternetAddress to = new InternetAddress(feed_email);

			message.setSentDate(new java.util.Date());
			message.setFrom(from);
			message.addRecipient(Message.RecipientType.TO, to);
			message.setSubject(feed_name);
			message.setContent("The question is " + feed_msg + " Sent On:-" + feed_date, "text/html");

			Transport tr = s.getTransport("smtp");
			tr.connect("smtp.gmail.com", "", "");
			message.saveChanges();
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
		} catch (Exception e) {
		}

		return "redirect:/b_index";

	}

	@RequestMapping("/b_msg/{id}")
	public ModelAndView d_msg(@PathVariable("id") int id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession mysession = request.getSession(true);
		if (mysession.getAttribute("buyer_id") == null) {
			mv.setViewName("b_login.jsp");
		} else {
			// ***************** get designer id from login

			int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
			// ************************* end get

			List list = buyerService.viewMessage(buyer_id);
			mv.addObject("list", list);

			String name = buyerService.getDesigner(id);
			mv.addObject("name", name);
			mv.addObject("designer_id", id);

			mv.setViewName("../b_msg.jsp");
		}
		return mv;

	}

	@RequestMapping("/b_add_msg_code")
	public String b_add_msg_code(HttpServletRequest request, HttpServletResponse response) {
		String msg = request.getParameter("msg");
		String file = request.getParameter("file");
		Date date = new Date();
		String date1 = date.toString();
		int designer_id = Integer.parseInt(request.getParameter("designer_id"));
		Designer designer = buyerService.getDesigner1(designer_id);

		// ***************** get designer id from login

		HttpSession mysession = request.getSession();
		int buyer_id = Integer.parseInt(mysession.getAttribute("buyer_id").toString());
		// ************************* end get
		ModelAndView mv = new ModelAndView();
		Buyer buyer = buyerService.getBuyer(buyer_id);
		com.springmvc.Message message = new com.springmvc.Message(msg, buyer, designer, date1, file, "buyer");
		buyerService.addMsg(message);

		return "redirect:/b_view_order";
	}

}
