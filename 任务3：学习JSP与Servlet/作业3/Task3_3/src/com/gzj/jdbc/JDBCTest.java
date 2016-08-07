package com.gzj.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCTest {

	/**
	 * 获得数据库连接
	 * 
	 * @return 数据库连接
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 使用XAMPP的mysql数据库
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db?characterEncoding=UTF8", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
	
	/**
	 * 查询
	 * @param sql SQL语句
	 */
	public static void query(String sql) {
		Connection conn = getConnection();
		Statement st = null;
		ResultSet rs = null;

		try {			
			st = conn.createStatement();
			rs = st.executeQuery(sql);

			while (rs.next()) {
				System.out.print(rs.getInt("stu_id") + "\t");
				System.out.print(rs.getString("stu_name")+"\t");
				System.out.print(rs.getInt("stu_age")+"\t");
				System.out.print(rs.getString("stu_gender")+"\t");
				System.out.println(rs.getString("stu_adress"));				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				st.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	/**
	 * 执行SQL语句
	 * @param sql SQL语句
	 */
	public static void execSql(String sql) {
		Connection conn = getConnection();
		try {			
			Statement st=conn.createStatement();
			int count=st.executeUpdate(sql);
			System.out.println("影响了"+count+"条记录");
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		//1、向数据表写入十条不同的数据，并将数据库中所有的数据输出
		String sql = "INSERT INTO t_students (stu_id, stu_name, stu_age, stu_gender, stu_adress) "
				+ "VALUES ('20001', '小明', '20', '男', '北京市XX区'), ('20002', '小红', '13', '女', '上海XX区'),	"
				+ "('20003', '小刚', '10', '男', '北京市XX区'), ('20004', '小赵', '20', '女', '上海XX区'),"
				+ "('20005', '小李', '25', '男', '北京市XX区'), ('20006', '小明', '18', '女', '上海XX区'),"
				+ "('20007', '张三', '18', '男', '北京市XX区'), ('20008', '小刘', '18', '女', '上海XX区'),"
				+ "('20009', '小王', '20', '男', '北京市XX区'), ('20010', '小张', '25', '女', '上海XX区');";
		execSql(sql);	//插入		
		sql = "SELECT * FROM t_students";
		query(sql);		//查询插入是否成功
		
		//2、查询年龄大于15岁的男生，并将数据输出 
		sql="SELECT * FROM t_students WHERE stu_age > 15 AND stu_gender = '男';";
		query(sql);		//查询筛选后的结果
		
		//3、删除所有男生的数据，并将删除之后，数据库中的所有数据输出
		sql="DELETE FROM t_students WHERE stu_gender='男';";
		execSql(sql); 	//执行删除		
		sql = "SELECT * FROM t_students";
		query(sql);		//查询删除是否成功
		
	}

}
