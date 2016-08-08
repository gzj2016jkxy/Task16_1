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

import com.gzj.dao.IVipDAO;
import com.gzj.entity.Vip;

/**
 * 实现VIPDAO
 *
 */
public class VipDAO implements IVipDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Vip> getAll() {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("from Vip");
			List<Vip> list = query.list();
			tx.commit();

			return list;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public Vip getByID(int id) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			Vip list = (Vip) session.get(Vip.class, id);
			tx.commit();
			return list;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			session.close();
		}

	}

	@Override
	public boolean save(Vip vip) {
		Transaction tx = null;
		Session session = null;				
		
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(vip);
			tx.commit();
			return true;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		} finally {
			session.close();
		}

	}

	@Override
	public boolean deleteByID(int id) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("delete from Vip where vipid=" + id);
			
			int result = query.executeUpdate();
			tx.commit();

			if (result > 0) {
				return true;
			} else {
				return false;
			}

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Vip vip) {
		Transaction tx = null;
		Session session = null;
		
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.update(vip);
			tx.commit();
			return true;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

}
