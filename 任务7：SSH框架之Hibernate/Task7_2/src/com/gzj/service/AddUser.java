/**
 * 
 */
package com.gzj.service;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.entity.Users;
import com.gzj.util.HibernateUtils;

/**
 * 添加用户
 *
 */
public class AddUser {
	public boolean add(Users us){
		Transaction tx = null;
		Session session = null;
		
		try {
			session=HibernateUtils.getSession();
			tx=session.beginTransaction();
			session.save(us);
			tx.commit();
			return true;
			
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return false;
		}finally {
			HibernateUtils.closeSession(session);
		}		
	}
}
