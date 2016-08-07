package com.gzj.entity;

import java.io.Serializable;

public class UserEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String userName;
	private String passWord;

	public UserEntity() {
		super();
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
