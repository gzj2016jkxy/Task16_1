/**
 * 
 */
package com.gzj.task;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gzj.entity.Poetries;
import com.gzj.entity.Poets;
import com.gzj.util.HibernateUtils;

/**
 * ［使用关联映射实现］输出某一个诗人所有的诗词前15个字（包括标点符号）， 这个诗人的名字要求用户输入，敲回车后进行查询操作。
 *
 */
public class Task3Test {

	public static void main(String[] args) {

		try {
			BufferedReader strin = new BufferedReader(new InputStreamReader(System.in));
			
			String author; // 诗人名字

			while (true) {
				System.out.println("请输入一个诗人的名字(exit退出)：");
				
				author = strin.readLine(); // 获取控制台输入
				if (author.equals("exit")) {
					break;
				}

				Transaction tx = null;
				Session session = null;

				try {
					session = HibernateUtils.getSession();
					tx = session.beginTransaction();
					String hql = "SELECT a.id FROM Poets a WHERE a.name=:name";					
					Query query = session.createQuery(hql);
					query.setString("name", author);
					List list = query.list();	
					
					System.out.println(list);	//也是空的？？？
					
					int poetid = (int) list.get(0);

					if (poetid > 0) {
						getContext(poetid);
					} else {
						System.out.println("未找到该诗人，请检查输入！");
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
			strin.close();

		} catch (IOException e) {

			e.printStackTrace();
		}
	}

	/**
	 * 根据诗人的ID查询
	 */
	public static void getContext(int poetid) {
		Transaction tx = null;
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			tx = session.beginTransaction();

			Poets acc = (Poets) session.get(Poets.class, poetid);

			System.out.println("该诗人所有的诗词前15个字如下：");
			for (Poetries o : acc.getSetPoetries()) {
				System.out.println(o.getContent().substring(0, 15)); // 取15个
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
