/**
 * 
 */
package com.gzj.task;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.util.HibernateUtils;

/**
 * ［使用HQL实现］输出数据中名字为三个字的诗人列表及其诗词的数量统计。 格式如：姓名 － 诗词数量
 *
 */
public class Task1Test {

	public static void main(String[] args) {
		select();
	}	
	
	public static void select() {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();
			String hql = "SELECT b.name,COUNT(b.name) FROM Poetries a , Poets b WHERE a.poet_id=b.id AND CHAR_LENGTH(b.name)=3 GROUP BY b.name";
			Query query = session.createQuery(hql);
			List<Object[]> list = query.list();
			
			System.out.println("姓名\t－\t 诗词数量");
			for (Object objs[] : list) {

				System.out.print(objs[0]);
				System.out.print("\t－\t ");
				System.out.println(objs[1]);
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
