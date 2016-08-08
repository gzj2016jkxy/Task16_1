/**
 * 
 */
package com.gzj.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.ICollectionDAO;
import com.gzj.entity.Collection;
import com.gzj.entity.Poet;

/**
 * 实现用户收集诗集DAO
 *
 */
public class CollectionDAO implements ICollectionDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Poet> getCollectionByUserID(int userid) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			String hql = "SELECT d.name,c.title,c.content FROM Collection a,Users b ,Poetries c,Poets d WHERE a.userid=b.userid AND c.id=a.id AND c.poet_id=d.id AND a.userid=:userid";
			Query query = session.createQuery(hql);
			query.setInteger("userid", userid);

			List<Object[]> list = query.list();

			List<Poet> pos = new ArrayList<Poet>();
			for (Object objs[] : list) {
				Poet po = new Poet();
				po.setAuthor(String.valueOf(objs[0]));
				po.setTitle(String.valueOf(objs[1]));
				po.setContent(String.valueOf(objs[2]));

				pos.add(po);
			}

			tx.commit();
			return pos;
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean addCollection(Collection collection) {

		Transaction tx = null;
		Session session = null;
		
		//System.out.println(collection.getId());

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(collection);
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
	public boolean delCollection(int id, int userid) {

		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("delete from Collection where userid=" + userid + "and id=" + id);

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
	public List<Integer> getPoetriesID(int userid) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			String hql = "SELECT a.id FROM Collection a WHERE a.userid=:userid";
			Query query = session.createQuery(hql);
			query.setInteger("userid", userid);

			List<Integer> list = query.list();

			tx.commit();
			return list;
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

}
