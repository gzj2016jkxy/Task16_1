/**
 * 
 */
package com.gzj.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Goods;
import com.gzj.entity.Orders;
import com.gzj.entity.OrdersDetails;
import com.gzj.entity.Users;
import com.gzj.util.Cart;
import com.gzj.util.CartGood;
import com.gzj.util.PageNumber;

/**
 * 实现商品DAO
 *
 */
public class GoodsDAO implements IGoodsDAO {

	private SessionFactory sessionFactory;
	private PageNumber pageNumber = new PageNumber();
	private int rowCount = 0; // 总记录数
	private int pageSize = 8; // 一页显示几条
	private int pageCount = 0; // 一共几页

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Goods getGoodById(int id) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where goodsId=:goodsId";
		Query query = session.createQuery(hql);
		query.setInteger("goodsId", id);

		Goods goods = new Goods();
		List list = query.list();
		ts.commit();
		session.clear();
		session.close();
		if (list.size() != 0) {
			goods = (Goods) list.get(0);
			return goods;
		}
		return null;
	}

	@Override
	public int getRowCount() {
		return rowCount;
	}

	@Override
	public int getAllPageBySort(String searchBy) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where sortName=:sortName";
		Query query = session.createQuery(hql);
		query.setString("sortName", searchBy);

		rowCount = query.list().size();

		pageNumber.setPageCount(rowCount, pageSize);
		pageCount = pageNumber.getPageCount();

		ts.commit();
		session.clear();
		session.close();

		return pageCount;
	}

	@Override
	public List<Goods> getGoodsBySort(String searchBy, int currentPage) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where sortName=:sortName";
		Query query = session.createQuery(hql).setFirstResult((currentPage - 1) * pageSize).setMaxResults(pageSize);
		query.setString("sortName", searchBy);

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public int getAllPageByPrice(String searchBy) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		int pos = searchBy.indexOf("-");
		float low = Float.parseFloat(searchBy.substring(0, pos));
		float high = Float.parseFloat(searchBy.substring(pos + 1));
		String hql = "from Goods where goodsPrice between " + low + " and " + high;
		Query query = session.createQuery(hql);

		rowCount = query.list().size();

		pageNumber.setPageCount(rowCount, pageSize);
		pageCount = pageNumber.getPageCount();

		ts.commit();
		session.clear();
		session.close();

		return pageCount;
	}

	@Override
	public List<Goods> getGoodsByPrice(String searchBy, int currentPage) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		int pos = searchBy.indexOf("-");
		float low = Float.parseFloat(searchBy.substring(0, pos));
		float high = Float.parseFloat(searchBy.substring(pos + 1));
		String hql = "from Goods where goodsPrice between " + low + " and " + high;
		Query query = session.createQuery(hql).setFirstResult((currentPage - 1) * pageSize).setMaxResults(pageSize);

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public int getAllPageByMaterial(String searchBy) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		String hql = "from Goods where goodsmaterial like :goodsmaterial";
		Query query = session.createQuery(hql);
		query.setString("goodsmaterial", "%" + searchBy + "%");

		rowCount = query.list().size();
		pageNumber.setPageCount(rowCount, pageSize);
		pageCount = pageNumber.getPageCount();

		ts.commit();
		session.clear();
		session.close();

		return pageCount;
	}

	@Override
	public List<Goods> getGoodsByMaterial(String searchBy, int currentPage) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where goodsmaterial like :goodsmaterial";
		Query query = session.createQuery(hql).setFirstResult((currentPage - 1) * pageSize).setMaxResults(pageSize);
		query.setString("goodsmaterial", "%" + searchBy + "%");

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public int getAllPageByLowerSelect(String goodsName, String sortName) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		String hql = "from Goods where goodsName like :goodsName and sortName like :sortName";
		Query query = session.createQuery(hql);
		query.setString("goodsName", "%" + goodsName + "%");
		query.setString("sortName", "%" + sortName + "%");

		rowCount = query.list().size();
		pageNumber.setPageCount(rowCount, pageSize);
		pageCount = pageNumber.getPageCount();

		ts.commit();
		session.clear();
		session.close();

		return pageCount;
	}

	@Override
	public List<Goods> getGoodsByLowerSelect(String goodsName, String sortName, int currentPage) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where goodsName like :goodsName and sortName like :sortName";
		Query query = session.createQuery(hql).setFirstResult((currentPage - 1) * pageSize).setMaxResults(pageSize);
		query.setString("goodsName", "%" + goodsName + "%");
		query.setString("sortName", "%" + sortName + "%");

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public int getAllPageByHeightSelect(String searchBy, String searchOption, String goodsPrice, String sortName) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		String hql = "";
		if (searchOption.equals("商品名称")) {
			hql = "from Goods where goodsName like :searchBy and sortName like :sortName and (goodsPrice between 0 and :goodsPrice)";
		} else if (searchOption.equals("花材")) {
			hql = "from Goods where goodsmaterial like :searchBy and sortName like :sortName and (goodsPrice between 0 and :goodsPrice)";
		}

		Query query = session.createQuery(hql);
		query.setString("searchBy", "%" + searchBy + "%");
		query.setString("sortName", "%" + sortName + "%");
		query.setString("goodsPrice", goodsPrice);

		rowCount = query.list().size();
		pageNumber.setPageCount(rowCount, pageSize);
		pageCount = pageNumber.getPageCount();

		ts.commit();
		session.clear();
		session.close();

		return pageCount;
	}

	@Override
	public List<Goods> getGoodsByHeightSelect(String searchBy, String searchOption, String goodsPrice, String sortName,
			int currentPage) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();

		String hql = "";
		if (searchOption.equals("商品名称")) {
			hql = "from Goods where goodsName like :searchBy and sortName like :sortName and (goodsPrice between 0 and :goodsPrice)";
		} else if (searchOption.equals("花材")) {
			hql = "from Goods where goodsmaterial like :searchBy and sortName like :sortName and (goodsPrice between 0 and :goodsPrice)";
		}

		Query query = session.createQuery(hql).setFirstResult((currentPage - 1) * pageSize).setMaxResults(pageSize);
		query.setString("searchBy", "%" + searchBy + "%");
		query.setString("sortName", "%" + sortName + "%");
		query.setString("goodsPrice", goodsPrice);

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	/**
	 * 生成订单
	 */
	public boolean addOrder(Orders orders) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			session.save(orders); // 生成订单
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

	/**
	 * 获取订单表最大的ID
	 */
	public int getMaxId() {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			String hql = "select max(ordersId) from Orders";
			Query query = session.createQuery(hql);

			List li = query.list();

			int ordersId = (int) li.get(0);

			tx.commit();

			return ordersId;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return -1;
		} finally {
			session.clear();
			session.close();
		}
	}

	/**
	 * 增加订单细节
	 */
	public boolean addOrderDetail(Cart cart, int ordersId) {
		Transaction tx = null;
		Session session = null;
				
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			HashMap<String, CartGood> items = cart.getItems();
			Iterator<String> iterator = items.keySet().iterator();
			while (iterator.hasNext()) { // 生成订单细节
				String goodsId = (String) iterator.next();
				CartGood cartGood = items.get(String.valueOf(goodsId));
				
				OrdersDetails ordersDetails = new OrdersDetails();
				ordersDetails.setOrdersId(ordersId);
				ordersDetails.setGoodsName(cartGood.getGoodsName());
				ordersDetails.setGoodsPrice(String.valueOf(cartGood.getGoodsPrice()));
				ordersDetails.setGoodsCount(cartGood.getQuantity());
				session.save(ordersDetails);

			}

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
	public Orders buildOrder(Cart cart, Users users) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			HashMap<String, CartGood> items = cart.getItems();
			Iterator<String> iterator = items.keySet().iterator();
			float ordersPrice = 0;
			while (iterator.hasNext()) { // 求出订单总价
				String goodsId = (String) iterator.next();
				CartGood cartGood = items.get(goodsId);
				ordersPrice += cartGood.getGoodsPrice() * cartGood.getQuantity();
			}

			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String ordersDatetime = df.format(new Date());
			String usersName = users.getUsersName();

			Orders orders = new Orders();
			orders.setUsersName(usersName);
			orders.setOrdersPrice(String.valueOf(ordersPrice));
			orders.setOrdersDatetime(ordersDatetime);

			if (!addOrder(orders)) {
				return null;
			}

			int ordersId = getMaxId();
			if (ordersId == -1) {
				return null;
			}

			//System.out.println("订单ID为：" + ordersId);

			if (!addOrderDetail(cart, ordersId)) {								
				return null;
			}

			String hql = "from Orders where ordersId=" + ordersId; // 获取之前生成的订单
			Query query = session.createQuery(hql);
			Orders list = (Orders) query.list().get(0);

			tx.commit();
			return list;

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
			return null;
		} finally {
			session.clear();
			session.close();
		}
	}

	@Override
	public boolean addGood(Goods goods) {
		Transaction tx = null;
		Session session = null;
				
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			
			session.save(goods);
			
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
	public List<Goods> getGoodByName(String goodsName) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Goods where goodsName like :goodsName";
		Query query = session.createQuery(hql);
		query.setString("goodsName", "%" + goodsName + "%");

		List<Goods> list = (List<Goods>) query.list();

		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public boolean delGoodById(int id) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
						
			Query query = session.createQuery("delete from Goods where goodsId=" + id);
			
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
