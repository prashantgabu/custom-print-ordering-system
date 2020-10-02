package com.springmvc;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

//******************Admin
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

	public List getAllDesign(int designer_id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Design.class, "design");
		crt.createAlias("design.designer", "designer");
		crt.add(Restrictions.eq("designer.designer_id", designer_id));

		return crt.list();

	}
	public List getAllPendingCnorder() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class);

		crt.add(Restrictions.eq("delivery_status", "Work In Progress"));
		return crt.list();

	}

	public List getAllAdmin() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Admin.class);

		return crt.list();

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

	public List view_Pdesigner() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("status", "pending"));
		return crt.list();

	}

	public List view_Vdesigner() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		Criteria crt = session.createCriteria(Designer.class);
		crt.add(Restrictions.eq("status", "verified"));
		return crt.list();

	}

	public Admin addAdmin(Admin admin) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(admin);
		return admin;
	}

	public Admin getAllAdmin(String email, String password) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
			// TODO: handle exception
		}
		Criteria crt = session.createCriteria(Admin.class);
		crt.add(Restrictions.eq("email", email));
		crt.add(Restrictions.eq("password", password));

		return (Admin) crt.uniqueResult();
	}

	public List editDesigner(int id) {
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

	public void updateDesigner(Designer designer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(designer);
	}

//******************************Category
	public Category addCat(Category cat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(cat);
		return cat;
	}

	public List editCat(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Category.class);
		crt.add(Restrictions.eq("cat_id", id));
		return crt.list();

	}

	public void updateCat(Category cat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(cat);
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

	public void deleteCat(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Category cat = (Category) session.load(Category.class, new Integer(id));
		if (null != cat) {
			session.delete(cat);
		}
	}

//**************************SUbcat
	public Subcat addSubcat(Subcat subcat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(subcat);
		return subcat;

	}

	public List editCnstatus(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Confirm_order.class);
		crt.add(Restrictions.eq("cnorder_id", id));
		return crt.list();

	}

	public void updateCnstatus(Confirm_order cnorder) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(cnorder);
	}

	public Confirm_order getCnorder(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Confirm_order cnorder = (Confirm_order) session.get(Confirm_order.class, id);
		return cnorder;
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

	public void deleteSubcat(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Subcat subcat = (Subcat) session.load(Subcat.class, new Integer(id));
		if (null != subcat) {
			session.delete(subcat);
		}
	}

	public void deleteReview(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Review review= (Review) session.load(Review.class, new Integer(id));
		if (null != review) {
			session.delete(review);
		}
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

	public void deleteFeedback(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Feedback feedback = (Feedback) session.load(Feedback.class, new Integer(id));
		if (null != feedback) {
			session.delete(feedback);
		}
	}

	public void deleteBuyer(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Buyer buyer = (Buyer) session.load(Buyer.class, new Integer(id));
		if (null != buyer) {
			session.delete(buyer);
		}
	}

	public List viewCnorder() {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}
		List list = (List) session.createQuery("from Confirm_order").list();
		return list;

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
		crt.addOrder(Order.desc("delivery_status"));
		return crt.list();

	}

	public List editSubcat(int id) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = this.sessionFactory.openSession();
		}

		Criteria crt = session.createCriteria(Subcat.class);
		crt.add(Restrictions.eq("subcat_id", id));
		return crt.list();

	}

	public void updateSubcat(Subcat subcat) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(subcat);
	}

	/*
	 * public void insertalldata() {
	 * 
	 * Category cat1 = new Category("Visiting Cards"); Category cat2 = new
	 * Category("Marketing Materials"); Category cat3 = new
	 * Category("Visiting Cards"); Category cat4 = new Category("Visiting Cards");
	 * Category cat5 = new Category("Visiting Cards");
	 * 
	 * Subcat subcat1 = new Subcat("Standard", cat1); Subcat subcat2 = new
	 * Subcat("Megnatic", cat1);
	 * 
	 * Subcat subcat3 = new Subcat("Flax Banner", cat2); Subcat subcat4 = new
	 * Subcat("Poster", cat2);
	 * 
	 * Designer designer1 = new Designer("Art Creator", "art@gmail.com", "art",
	 * "address", "status", "city", "propic", 123, "storename", "contact"); //
	 * Designer designer2 = new Designer()
	 * 
	 * Design design1 = new Design("name", "photo_1","q", "photo_2", "photo_3",
	 * "price", "detail", "length", "width", designer1, subcat1);
	 * 
	 * Buyer buyer1 = new Buyer("email", "password", "fname", "lname", "address",
	 * "city", "dob", "fav", "propic", "status", "state", "gender"); Buyer buyer2 =
	 * new Buyer("email1", "1password", "1fname", "1lname", "1address", "1city",
	 * "1dob", "1fav", "1propic", "1status", "1state", "1gender"); }
	 */
}
