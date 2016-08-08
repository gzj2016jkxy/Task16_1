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

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Commodity;

/**
 * 实现商品DAO
 *
 */
public class GoodsDAO implements IGoodsDAO {
	
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<Commodity> getAll() {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("from Commodity");
			List<Commodity> list = query.list();
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
	public Commodity getByID(int id) {
		Transaction tx = null;
		Session session = null;

		//System.out.println("传入的ID："+id);
		
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			Commodity list = (Commodity) session.get(Commodity.class, id);
			tx.commit();
			
			//System.out.println("获取到的："+list);
			
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
	public boolean save(Commodity commodity) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(commodity);
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
			Query query = session.createQuery("delete from Commodity where commodityId=" + id);
			
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
	public boolean update(Commodity commodity) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.update(commodity);
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
