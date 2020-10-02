package com.springmvc;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DesignerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	// *************************** designer
	public List changePwd(String oldpwd) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("password", oldpwd));
		return crt.list();

	}

	public List getAllBuyer(int id) {
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
	public List getAllReview(int design_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Review.class, "rev");
		crt.createAlias("rev.design", "design");

		crt.add(Restrictions.eq("design.design_id", design_id));

		return crt.list();

	}
	public List editProfile(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("designer_id", id));
		return crt.list();

	}

	public void updateProfile(Designer designer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(designer);
	}

	public Designer addDesigner(Designer designer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(designer);
		return designer;
	}

	public Designer getDesigner(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Designer designer = (Designer) session.get(Designer.class, id);
		return designer;
	}

	public List getAllDesigner() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Designer").list();
		return list;

	}

	public Buyer getBuyer1(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Buyer buyer = (Buyer) session.get(Buyer.class, id);
		return buyer;
	}

	public List getpassword(String email) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("email", email));
		return crt.list();

	}

	public String getBuyer(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Buyer buyer = (Buyer) session.get(Buyer.class, id);
		return buyer.fname + " " + buyer.lname;

	}

	public Designer getAllDesigner(String email, String password) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
			// TODO: handle exception
		}
		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("email", email));
		crt.add(Restrictions.eq("password", password));
		crt.add(Restrictions.eq("status", "verified"));

		return (Designer) crt.uniqueResult();
	}

	// ***************************** design
	public Design addDesign(Design design) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(design);
		return design;
	}

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

	public List getAllDesign() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Design").list();
		return list;

	}

	public List editDesign(int id) {
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

	public void updateDesign(Design design) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(design);
	}

	public List getAllDesign(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Design.class);
		crt.add(Restrictions.eq("designer", designer));

		return crt.list();

	}
	public List getAllDesigner(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		//Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("designer_id", designer_id));

		return crt.list();

	}

	public List getAllCnorder(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Confirm_order.class, "cnorder");
		crt.createAlias("cnorder.design", "design");
		crt.createAlias("design.designer", "designer");

		crt.add(Restrictions.eq("designer.designer_id", designer_id));

		return crt.list();

	}

	public List getAllPendingCnorder(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Confirm_order.class, "cnorder");
		crt.createAlias("cnorder.design", "design");
		crt.createAlias("design.designer", "designer");

		crt.add(Restrictions.eq("cnorder.delivery_status", "Work In Progress"));
		crt.add(Restrictions.eq("designer.designer_id", designer_id));

		return crt.list();

	}

	public void deleteDesign(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Design design = (Design) session.load(Design.class, new Integer(id));
		if (null != design) {
			session.delete(design);
		}
	}

	// **************************** discount
	public List getAllDisc(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Discount.class, "dis");
		crt.createAlias("dis.design", "design");
		crt.createAlias("design.designer", "designer");

		crt.add(Restrictions.eq("designer.designer_id", designer_id));

		return crt.list();

	}

	public Discount addDiscount(Discount discount) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(discount);
		return discount;
	}

	public Discount getDiscount(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Discount discount = (Discount) session.get(Discount.class, id);
		return discount;
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

	public List getAllDiscount(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Discount.class);
		crt.add(Restrictions.eq("designer", designer));

		return crt.list();

	}

	public List editDiscount(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Discount.class);
		crt.add(Restrictions.eq("dis_id", id));
		return crt.list();

	}

	public void updateDiscount(Discount discount) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(discount);
	}

	public void deleteDiscount(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Discount discount = (Discount) session.load(Discount.class, new Integer(id));
		if (null != discount) {
			session.delete(discount);
		}
	}

//********************************Feedback
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

	public void deleteBuy_item(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Buy_item buy_item = (Buy_item) session.load(Buy_item.class, new Integer(id));
		if (null != buy_item) {
			session.delete(buy_item);
		}
	}// *************************** Review

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

	public void deleteReview(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Review review = (Review) session.load(Review.class, new Integer(id));
		if (null != review) {
			session.delete(review);
		}
	}

	// ******************** sub category
	public Subcat addSubcat(Subcat subcat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(subcat);
		return subcat;
	}

	public Subcat getSubcat(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Subcat subcat = (Subcat) session.get(Subcat.class, id);
		return subcat;
	}

	public List getAllSubcat() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Subcat").list();
		return list;

	}
	// ********************category

	public Category addCat(Category cat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(cat);
		return cat;
	}

	public Category getCat(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Category cat = (Category) session.get(Category.class, id);
		return cat;
	}

	public List getAllCat() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Category").list();
		return list;

	}

	// *******************Confirm Order
	public List getAllOrder() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class);

		return crt.list();

	}
	public List getAllOrder(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class,"cn");
		crt.createAlias("cn.design", "design");
		crt.createAlias("design.designer", "designer");
		crt.add(Restrictions.eq("designer.designer_id", id));

		return crt.list();

	}

	public Message addMsg(Message msg) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(msg);
		return msg;
	}

	public List getAllMessage(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Designer designer = getDesigner(designer_id);

		Criteria crt = session.createCriteria(Message.class);
		crt.add(Restrictions.eq("designer", designer));

		return crt.list();

	}

}
