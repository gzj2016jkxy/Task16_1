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

import com.gzj.dao.ISortDAO;
import com.gzj.entity.Sort;

/**
 * 实现种类DAO
 *
 */
public class SortDAO implements ISortDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean addSort(Sort sort) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(sort);
			tx.commit();
			return true;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		} finally {
			session.clear();
			session.close();
		}
	}

	@Override
	public List<Sort> getAllSort() {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			String hql = "from Sort ";
			Query query = session.createQuery(hql);

			List<Sort> list = query.list();

			tx.commit();
			return list;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			session.clear();
			session.close();
		}
	}

}
