package com.gzj.service;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.entity.Users;
import com.gzj.util.HibernateUtils;

public class CheckLogin {
	public boolean checkUserExist(String username, String password) {
		Transaction tx = null;
		Session session = null;
		List<Users> list = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			// 查询操作，首先要获取一个Query 接口实例对象
			String hql = "from Users a where a.user_name=:username and a.password=:password";

			Query query = session.createQuery(hql);
			query.setString("username", username);
			query.setString("password", password);
			list = (List<Users>) query.list();
			
			tx.commit();
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
		} finally {
			HibernateUtils.closeSession(session);
		}

		if (list.size() > 0) {
			ServletRequest request=ServletActionContext.getRequest();
			HttpServletRequest req=(HttpServletRequest)request;
			HttpSession ses=req.getSession();
			ses.setAttribute("user", list.get(0));
			
			return true;
		} else {
			return false;
		}

	}

}
