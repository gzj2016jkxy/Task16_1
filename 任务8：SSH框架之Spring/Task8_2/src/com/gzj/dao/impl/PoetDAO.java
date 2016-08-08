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

import com.gzj.dao.IPoetDAO;
import com.gzj.entity.Poet;

/**
 * 实现诗集DAO
 *
 */
public class PoetDAO implements IPoetDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<String> searchByAuthor(String author) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			String hql = "SELECT a.title FROM Poetries a , Poets b WHERE a.poet_id=b.id AND b.name=:author";

			Query query = session.createQuery(hql);
			query.setString("author", author);

			// System.out.println("查到的数据："+query.list());

			List<String> titles = query.list();
			tx.commit();
			return titles;
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
	public List<String> searchByTitle(String title) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			String hql = "SELECT a.content FROM Poetries a WHERE a.title LIKE :title";
			Query query = session.createQuery(hql);
			query.setString("title", "%" + title + "%");
			List<String> contents = query.list();
			tx.commit();
			return contents;
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
	public List<Poet> searchByContent(String content) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			String hql = "SELECT b.name, a.title,a.content FROM Poetries a , Poets b WHERE a.poet_id=b.id AND a.content like ?";
			Query query = session.createQuery(hql);
			query.setString(0, "%" + content + "%");

//			System.out.println("查到的数据：" + query.list());
			List<Object[]> list = query.list();

			List<Poet> pos = new ArrayList<Poet>();
			for (Object objs[] : list) {
				Poet po = new Poet();
				po.setAuthor(String.valueOf(objs[0]));
				po.setTitle(String.valueOf(objs[1]));
				po.setContent(String.valueOf(objs[2]));
				
//				System.out.println(objs[0]);
//				System.out.println(objs[1]);
//				System.out.println(objs[2]);
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

}
