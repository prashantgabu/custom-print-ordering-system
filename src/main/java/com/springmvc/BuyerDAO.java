package com.springmvc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BuyerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	// *************************** Buyer
	public List getAllSearch(String search) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Design.class);
		crt.add(Restrictions.like("name", search + "%", MatchMode.ANYWHERE));
		List<Design> results = crt.list();
		return crt.list();

	}

	public void deleteCart(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Cart cart = (Cart) session.load(Cart.class, new Integer(id));
		if (null != cart) {
			session.delete(cart);
		}
	}

	public List changePwd(String oldpwd) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Buyer.class);
		crt.add(Restrictions.eq("password", oldpwd));
		return crt.list();

	}

	public List getpassword(String email) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Buyer.class);
		crt.add(Restrictions.eq("email", email));
		return crt.list();

	}

	public Buyer addBuyer(Buyer buyer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(buyer);

		// **************************

		// **********************

		return buyer;
	}

	public List editProfile(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Buyer.class);
		crt.add(Restrictions.eq("buyer_id", id));
		return crt.list();

	}

	public void updateProfile(Buyer buyer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(buyer);
	}

	public Buyer getBuyer(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Buyer buyer = (Buyer) session.get(Buyer.class, id);
		return buyer;
	}

	public List getAllBuyer(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Buyer buyer = getBuyer(buyer_id);

		Criteria crt = session.createCriteria(Buyer.class);
		crt.add(Restrictions.eq("buyer_id", buyer_id));

		return crt.list();

	}

	public List getAllBuyer() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Buyer").list();
		return list;

	}

	public Buyer getAllBuyer(String email, String password) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Buyer.class);
		crt.add(Restrictions.eq("email", email));
		crt.add(Restrictions.eq("password", password));

		return (Buyer) crt.uniqueResult();
	}

	// *************************** Payment

	public Payment addPayment(Payment payment) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(payment);
		return payment;
	}

	public Payment getPayment(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Payment payment = (Payment) session.get(Payment.class, id);
		return payment;
	}

	public List getAllPayment() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Payment").list();
		return list;

	}

	// ***************** order

	public boolean confirmOrder(Buyer buyer, Payment payment) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Cart.class);
		crt.add(Restrictions.eq("buyer", buyer));

		List list = crt.list();

		for (int i = 0; i < list.size(); i++) {
			Cart cart = (Cart) list.get(i);
			String address = cart.address;
			String companyname = cart.companyname;
			String contact = cart.contact;
			String discount = cart.discount;
			String email = cart.email;
			String status = "Work In Progress";
			String name = cart.name;
			String other_detail = cart.other_detail;
			String picture_1 = cart.picture_1;
			String picture_2 = cart.picture_2;
			String qty = cart.qty;
			Design design = cart.design;
			Date datee= new Date();
			String date2=datee.toString();
			/*SimpleDateFormat date2 = new SimpleDateFormat("yyyy-MM-dd HH");
			String date1 = date2.format(new Date());*/
			Confirm_order cnorder = new Confirm_order(status, qty, companyname, name, address, other_detail, email,
					contact, date2, picture_1, picture_2, discount, design, buyer);
			session.save(cnorder);

			// ***************************

			double q = Double.parseDouble(qty);
			double d = Double.parseDouble(discount);
			double a = Double.parseDouble(payment.amount);
			double newamt = (a - (q * d));

			Payment p2 = new Payment(payment.p_id, payment.number, payment.cvv, payment.exp_month, payment.exp_year,
					payment.name, payment.status, String.valueOf(newamt));
			session.update(p2);

		}

		// ********************* delete
		boolean b = false;
		int id = 0;
		for (int i = 0; i < list.size(); i++) {
			Cart cart = (Cart) list.get(i);
			id = cart.cart_id;
			cartdelete(id);
			b = true;
		}

		return (b);
	}

	public void cartdelete(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Cart cartdel = (Cart) session.load(Cart.class, new Integer(id));
		if (null != cartdel) {
			session.delete(cartdel);
		}
	}

	public Payment getAllPayment(String cvv, String exp_month, String exp_year, String number) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Payment.class);
		crt.add(Restrictions.eq("cvv", cvv));
		crt.add(Restrictions.eq("exp_month", exp_month));
		crt.add(Restrictions.eq("exp_year", exp_year));
		crt.add(Restrictions.eq("number", number));

		return (Payment) crt.uniqueResult();

	}
	// ****************************Review

	public Review addReview(Review review) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(review);
		return review;
	}

	public Review getReview(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Review review = (Review) session.get(Review.class, id);
		return review;
	}

	public List getAllReview() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Review").list();
		return list;

	}

	// *************************design
	public Design getDesign(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Design design = (Design) session.get(Design.class, id);
		return design;
	}

	public List getAllDesign(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);
		crt.add(Restrictions.eq("design_id", id));
		return crt.list();
	}

	public List getDiscount(Design design) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Discount.class);
		crt.add(Restrictions.eq("design", design));
		return crt.list();
	}

	public List getAllReview(Design design) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Review.class);
		crt.add(Restrictions.eq("design", design));
		return crt.list();
	}

	public List getAllDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);

		return crt.list();
	}

	public List getAllDiscount() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Discount").list();
		return list;

	}
	public List getAllCat() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Category.class);

		return crt.list();
	}

	public List getAllCardDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);

		return crt.list();
	}

	public List getAllTshirtDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);

		return crt.list();
	}

	public List getAllOtherDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);

		return crt.list();
	}

	public List getAllBannerDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Design.class);

		return crt.list();
	}
	// *************************** Buy_item

	public Buy_item addBuy_item(Buy_item buy_item) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(buy_item);
		return buy_item;
	}

	public Buy_item getBuy_item(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Buy_item buy_item = (Buy_item) session.get(Buy_item.class, id);
		return buy_item;
	}

	public List getAllBuy_item() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Buy_item").list();
		return list;

	}
	// ******************************Cart

	public Cart addCart(Cart cart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(cart);
		return cart;
	}

	public Cart getCart(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Cart cart = (Cart) session.get(Cart.class, id);
		return cart;
	}

	public List getAllCart() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Cart").list();
		return list;

	}

	public List getAllCart(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Buyer buyer = getBuyer(buyer_id);

		Criteria crt = session.createCriteria(Cart.class, "cn");
		crt.createAlias("cn.buyer", "buy");
		crt.add(Restrictions.eq("buy.buyer_id", buyer_id));

		return crt.list();

	}
	

	public List getAllCnorder(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class, "cn");
		crt.createAlias("cn.buyer", "buy");
		crt.add(Restrictions.eq("buy.buyer_id", buyer_id));

		return crt.list();

	}

	public List viewCnorderByDate(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class, "cn");
		crt.createAlias("cn.buyer", "buy");
		SimpleDateFormat date1= new SimpleDateFormat("yyyy-MM-dd HH");
		String dated = date1.format(new Date());
		String datee = dated.toString();
		//crt.add(Restrictions.like("date", datee+"%", MatchMode.ANYWHERE));
		crt.add(Restrictions.eq("cn.date", datee));
		crt.add(Restrictions.eq("buy.buyer_id", buyer_id));

		/*
		 * SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 * String myDate = date1; // Create date 17-04-2011 - 00h00 Date minDate =
		 * formatter.parse(myDate); // Create date 18-04-2011 - 00h00 // -> We take the
		 * 1st date and add it 1 day in millisecond thanks to a useful // and not so
		 * known class Date maxDate = new Date(minDate.getTime() +
		 * TimeUnit.DAYS.toMillis(1)); Conjunction and = Restrictions.conjunction(); //
		 * The order date must be >= 17-04-2011 - 00h00 and.add(Restrictions.ge("date",
		 * minDate)); // And the order date must be < 18-04-2011 - 00h00
		 * and.add(Restrictions.lt("date", maxDate));
		 */
		return crt.list();

	}

	// ******************************Feedback

	public Feedback addFeedback(Feedback feedback) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(feedback);
		return feedback;
	}

	public Feedback getFeedback(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Feedback feedback = (Feedback) session.get(Feedback.class, id);
		return feedback;
	}

	public List getAllFeedback() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Feedback").list();
		return list;

	}

	// ******************** sub category
	public Subcat getSubCat(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Subcat subcat = (Subcat) session.get(Subcat.class, id);
		return subcat;
	}

	public List getAllOrder(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Buyer buyer = getBuyer(buyer_id);

		Criteria crt = session.createCriteria(Confirm_order.class);
		crt.add(Restrictions.eq("buyer", buyer));

		return crt.list();

	}
	public List viewOrderById(int cid,int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class,"cn");
		crt.add(Restrictions.eq("cn.cnorder_id", cid));
		crt.createAlias("cn.buyer", "buyer");
		crt.add(Restrictions.eq("buyer.buyer_id", buyer_id));

		return crt.list();

	}

	public Message addMsg(Message msg) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(msg);
		return msg;
	}

	public List getAllMessage(int buyer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Buyer buyer = getBuyer(buyer_id);

		Criteria crt = session.createCriteria(Message.class);
		crt.add(Restrictions.eq("buyer", buyer));

		return crt.list();

	}

	public String getDesigner(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Designer designer = (Designer) session.get(Designer.class, id);
		return designer.name + " Owner/Designer Of " + designer.storename;

	}

	public Designer getDesigner1(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Designer designer = (Designer) session.get(Designer.class, id);
		return designer;
	}

}
