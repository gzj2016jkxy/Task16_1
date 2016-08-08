package com.gzj.entity;

import java.io.Serializable;

/**
 * 
 * 用户资料表users
 *
 */
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;

	private int usersId;
	private String usersName;
	private String usersPass;
	private String usersPassQuestion;
	private String usersPassReply;
	private String usersTrueName;
	private String usersAddress;
	private String usersPhone;
	private String usersE_mail;

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getUsersPass() {
		return usersPass;
	}

	public void setUsersPass(String usersPass) {
		this.usersPass = usersPass;
	}

	public String getUsersPassQuestion() {
		return usersPassQuestion;
	}

	public void setUsersPassQuestion(String usersPassQuestion) {
		this.usersPassQuestion = usersPassQuestion;
	}

	public String getUsersPassReply() {
		return usersPassReply;
	}

	public void setUsersPassReply(String usersPassReply) {
		this.usersPassReply = usersPassReply;
	}

	public String getUsersTrueName() {
		return usersTrueName;
	}

	public void setUsersTrueName(String usersTrueName) {
		this.usersTrueName = usersTrueName;
	}

	public String getUsersAddress() {
		return usersAddress;
	}

	public void setUsersAddress(String usersAddress) {
		this.usersAddress = usersAddress;
	}

	public String getUsersPhone() {
		return usersPhone;
	}

	public void setUsersPhone(String usersPhone) {
		this.usersPhone = usersPhone;
	}

	public String getUsersE_mail() {
		return usersE_mail;
	}

	public void setUsersE_mail(String usersE_mail) {
		this.usersE_mail = usersE_mail;
	}

}
