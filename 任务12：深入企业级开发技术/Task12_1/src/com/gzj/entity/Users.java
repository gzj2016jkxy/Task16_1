package com.gzj.entity;

import java.io.Serializable;
import java.util.Set;

public class Users implements Serializable {

	private static final long serialVersionUID = 1L;

	private int userid;
	private String username;
	private String password;	

	public Users() {
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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
}
