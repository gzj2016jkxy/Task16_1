package com.gzj.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gzj.pojo.Poets;

public class poetInfoService {
	private Connection conn;
	private PreparedStatement pstmt;

	public poetInfoService() {
		conn = new com.gzj.conn.conn().getConnection();
	}

	public List<String> searchByAuthor(String author) {
		List<String> titles = new ArrayList<String>();
		try {
			pstmt = conn.prepareStatement(
					"SELECT a.title FROM poetries a INNER JOIN poets b ON a.poet_id=b.id WHERE b.name=?");
			pstmt.setString(1, author);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String title = rs.getString(1);
				titles.add(title);
			}
			return titles;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<String> searchByTitle(String title) {
		List<String> contexts = new ArrayList<String>();
		try {
			pstmt = conn.prepareStatement("SELECT a.content FROM poetries a WHERE a.title=?");
			pstmt.setString(1, title);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String context = rs.getString(1);
				contexts.add(context);
			}
			return contexts;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Poets> searchByContext(String context) {
		if ("".equals(context)||context==null) {
			return null;
		}
		List<Poets> pos = new ArrayList<Poets>();
		try {			
			String sqlParasValue = "%" + context + "%";
			pstmt = conn.prepareStatement(
					"SELECT b.name, a.title,a.content FROM poetries a INNER JOIN poets b ON a.poet_id=b.id WHERE a.content like ?");
			pstmt.setString(1, sqlParasValue);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String author = rs.getString(1);
				String title = rs.getString(2);
				String context1 = rs.getString(3);
				Poets po = new Poets();
				po.setAuthor(author);
				po.setTitle(title);
				po.setContext(context1);

				pos.add(po);
			}
			return pos;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
