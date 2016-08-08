/**
 * 
 */
package com.gzj.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.ILeaveLanguageDAO;
import com.gzj.entity.LeaveLanguage;

/**
 * 实现留言DAO
 *
 */
public class LeaveLanguageDAO implements ILeaveLanguageDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<LeaveLanguage> getLeaveLanguage() {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from LeaveLanguage order by dateTime desc";
		Query query = session.createQuery(hql);		

		List<LeaveLanguage> list = query.list();
				
		ts.commit();
		session.clear();
		session.close();

		return list;		
	}

	@Override
	public boolean addLeaveLanguage(LeaveLanguage language) {
		Transaction tx = null;
		Session session = null;
		
		try {
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			session.save(language);
			tx.commit();
			return true;
			
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		}finally {
			session.clear();
			session.close();
		}
	}

}
