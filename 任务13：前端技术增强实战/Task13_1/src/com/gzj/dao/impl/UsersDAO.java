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

import com.gzj.dao.IUsersDAO;
import com.gzj.entity.Users;

/**
 * 实现用户DAO
 *
 */
public class UsersDAO implements IUsersDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Users checkUser(Users user) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Users where usersName=:usersName and usersPass=:usersPass";
		Query query = session.createQuery(hql);
		query.setString("usersName", user.getUsersName());
		query.setString("usersPass", user.getUsersPass());

		Users user1 = new Users();
		List list = query.list();
		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			user1 = (Users) list.get(0);
			return user1;
		}
		return null;
	}

	@Override
	public boolean addUser(Users user) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(user);
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
	public Users getUserByName(String name) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Users where usersName=:usersName";
		Query query = session.createQuery(hql);
		query.setString("usersName", name);

		Users user1 = new Users();
		List list = query.list();
		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			user1 = (Users) list.get(0);
			return user1;
		}
		return null;
	}

	@Override
	public Users getUserByID(int usersId) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Users where usersId=:usersId";
		Query query = session.createQuery(hql);
		query.setInteger("usersId", usersId);

		Users user1 = new Users();
		List list = query.list();
		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			user1 = (Users) list.get(0);
			return user1;
		}
		return null;
	}

	@Override
	public List<Users> getAllUser() {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Users";
		Query query = session.createQuery(hql);

		List<Users> list = query.list();
		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public boolean delUserByID(int usersId) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
						
			Query query = session.createQuery("delete from Users where usersId=" + usersId);
			
			int result = query.executeUpdate();
			tx.commit();

			//System.out.println("删除结果："+result);
						
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

}
