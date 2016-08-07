package com.gzj.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	/**
	 * 获得数据库连接
	 * 
	 * @return 数据库连接
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 使用XAMPP的mysql数据库
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tang_poetry?characterEncoding=UTF8", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
	
}
