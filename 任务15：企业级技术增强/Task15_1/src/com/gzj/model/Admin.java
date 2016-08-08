/**
 * 
 */
package com.gzj.model;

import java.io.Serializable;

/**
 * 管理员信息
 *
 */
public class Admin implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;// 自动编号
	private String userName;// 用户名
	private String passWord;// 密码
	private String mail;// 邮箱

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
