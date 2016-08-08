/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * user表：用来存放管理用户信息
 *
 */
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private int quanxian;

	public User() {
	}

	public User(String username) {
		this.username = username;
	}

	public User(String username, String password, Integer quanxian) {
		this.username = username;
		this.password = password;
		this.quanxian = quanxian;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getQuanxian() {
		return quanxian;
	}

	public void setQuanxian(int quanxian) {
		this.quanxian = quanxian;
	}

}
