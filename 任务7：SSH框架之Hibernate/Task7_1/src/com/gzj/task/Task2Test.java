/**
 * 
 */
package com.gzj.task;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.entity.Poetries;
import com.gzj.util.HibernateUtils;

/**
 * 分页输出诗人李白所有诗词的标题，要求每10个标题分为1页，输出的数据格式如下： 诗人李白相关的数据总共 XXX页。
 * 第一页内容：
 *  《。。。》 
 *  《。。。》 
 *  最后一页内容：
 *  《。。。》 
 *  《。。。》
 */
public class Task2Test {
	public static int count, pageNum;	//记录数，一共多少页
	public static int pageSize = 10;	//一页显示10条记录

	public static void main(String[] args) {
		testPager();
	}

	public static void testPager() {
		Transaction tx = null;
		Session session = null;

		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "SELECT count(a.title) FROM Poetries a , Poets b WHERE a.poet_id=b.id AND b.name=:name";
			Query query = session.createQuery(hql);
			query.setString("name", "李白");
			List list = query.list();
			
			System.out.println(list);		//为什么这个是空的？？？
			
			long countNum = (long) list.get(0);
			count=(int) countNum;
			pageNum = count % pageSize == 0 ? count / pageSize : count / pageSize + 1;

			System.out.println("诗人李白相关的数据总共" + pageNum + "页。");

			for (int i = 1; i <= pageNum; i++) {
				select(i, pageSize);
			}

			tx.commit();

		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
		} finally {
			HibernateUtils.closeSession(session);
		}
	}

	/**
	 * 分页查询
	 */
	public static void select(int pageNo, int pageSize) {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "SELECT new Poetries(a.title) FROM Poetries a , Poets b WHERE a.poet_id=b.id AND b.name=:name";
			Query query = session.createQuery(hql).setFirstResult((pageNo - 1) * pageSize).setMaxResults(pageSize);
			query.setString("name", "李白");
			List<Poetries> list = (List<Poetries>) query.list();
			if (pageNo == pageNum) {
				System.out.println("最后一页内容：：");
			} else {
				System.out.println("第" + pageNo + "页内容：");
			}

			for (Poetries po : list) {
				System.out.println("《" + po.getTitle() + "》");
			}

			tx.commit();
		} catch (HibernateException he) {
			if (tx != null) {
				tx.rollback();
			}
			he.printStackTrace();
		} finally {
			HibernateUtils.closeSession(session);
		}
	}
}
