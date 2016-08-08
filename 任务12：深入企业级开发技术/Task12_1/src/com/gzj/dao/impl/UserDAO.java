/**
 * 
 */
package com.gzj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.IUserDAO;
import com.gzj.entity.Users;

/**
 * 实现用户DAO
 *
 */
public class UserDAO implements IUserDAO {

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
		Query query = session.createQuery(
				"from Users where username='" + user.getUsername() + "' and password='" + user.getPassword() + "'");

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

}
