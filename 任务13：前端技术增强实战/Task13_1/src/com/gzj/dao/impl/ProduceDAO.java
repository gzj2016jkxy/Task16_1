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

import com.gzj.dao.IProduceDAO;
import com.gzj.entity.Produce;
import com.gzj.entity.ProduceDetail;

/**
 * 实现厂商DAO
 *
 */
public class ProduceDAO implements IProduceDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Produce> getProduce() {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "from Produce";
		Query query = session.createQuery(hql);

		List<Produce> list = query.list();
		ts.commit();
		session.clear();
		session.close();

		return list;
	}

	@Override
	public List<ProduceDetail> getDetail(int produceId) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String hql = "select b.sortName,c.goodsName,d.produceName from ProduceDetails a,Sort b,Goods c,Produce d where a.sortId=b.sortId and a.goodsId=c.goodsId and a.produceId=d.produceId and a.produceId=:produceId";
		Query query = session.createQuery(hql);
		query.setInteger("produceId", produceId);

		List<Object[]> list = query.list();

		List<ProduceDetail> pds = new ArrayList<ProduceDetail>();
		for (Object objs[] : list) {
			ProduceDetail pd = new ProduceDetail();
			pd.setSortName(String.valueOf(objs[0]));
			pd.setGoodsName(String.valueOf(objs[1]));
			pd.setProduceName(String.valueOf(objs[2]));
			pds.add(pd);
		}

		ts.commit();

		return pds;
	}

	@Override
	public boolean addProduce(Produce produce) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(produce);
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
	public boolean delProduce(int produceId) {
		Transaction tx = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
						
			Query query = session.createQuery("delete from Produce where produceId=" + produceId);
			
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
