/**
 * 
 */
package com.gzj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.IOrdersDAO;
import com.gzj.entity.Orders;
import com.gzj.entity.OrdersDetails;
import com.gzj.entity.Users;

/**
 * 实现订单DAO
 *
 */
public class OrdersDAO implements IOrdersDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Orders> getOrderByName(String name) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Orders where usersName=:usersName";
		Query query = session.createQuery(hql);
		query.setString("usersName", name);

		List<Orders> list = query.list();

		//System.out.println(list);

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public List<OrdersDetails> getDetailByID(int id) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from OrdersDetails where ordersId=:ordersId";
		Query query = session.createQuery(hql);
		query.setInteger("ordersId", id);

		List<OrdersDetails> list = query.list();

		// System.out.println(list);
		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public Orders getOrderByID(int ordersId) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Orders where ordersId=:ordersId";
		Query query = session.createQuery(hql);
		query.setInteger("ordersId", ordersId);

		List<Orders> list = query.list();
		Orders orders=new Orders();

		//System.out.println(list);

		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			orders = (Orders) list.get(0);
			return orders;
		}

		return null;
	}

	@Override
	public List<Orders> getAllOrder() {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Orders ";
		Query query = session.createQuery(hql);
		
		List<Orders> list = query.list();

		//System.out.println(list);

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

}
