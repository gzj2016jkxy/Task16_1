/**
 * 
 */
package com.gzj.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.entity.Users;
import com.gzj.util.HibernateUtils;

/**
 * 查找所有用户
 *
 */
public class SearchUser {
	public List<Users> getAllUser() {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "from Users";

			Query query = session.createQuery(hql);
			List<Users> list = (List<Users>) query.list();

			tx.commit();

			return list;
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			HibernateUtils.closeSession(session);
		}
	}

	public Users getUserById(int id) {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "from Users a where a.id=:id";

			Query query = session.createQuery(hql);
			query.setInteger("id", id);
			List list = query.list();
			Users us = (Users) list.get(0);
			tx.commit();

			return us;
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			HibernateUtils.closeSession(session);
		}
	}

	public boolean deleteUserById(int id) {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "delete Users where id=:id";
			Query query = session.createQuery(hql);
			query.setInteger("id", id);
			int i = query.executeUpdate();
			// System.out.println(i);
			tx.commit();
			if (i > 0) {
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
			HibernateUtils.closeSession(session);
		}

	}

}
