/**
 * 
 */
package com.gzj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.IAdminDAO;
import com.gzj.entity.Admin;
import com.gzj.entity.Users;

/**
 * 实现管理员DAO
 *
 */
public class AdminDAO implements IAdminDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Admin checkAdmin(Admin admin) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Admin where adminName=:adminName and adminPass=:adminPass";
		Query query = session.createQuery(hql);
		query.setString("adminName", admin.getAdminName());
		query.setString("adminPass", admin.getAdminPass());

		Admin user1 = new Admin();
		List list = query.list();
		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			user1 = (Admin) list.get(0);
			return user1;
		}
		return null;
	}

}
