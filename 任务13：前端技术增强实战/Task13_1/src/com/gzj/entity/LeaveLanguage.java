/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 留言表leaveLanguage
 *
 */
public class LeaveLanguage implements Serializable {

	private static final long serialVersionUID = 1L;

	private int leaveLanguageId;
	private String name;
	private String qq;
	private String email;
	private String leaveLanguage;
	private String dateTime;

	public int getLeaveLanguageId() {
		return leaveLanguageId;
	}

	public void setLeaveLanguageId(int leaveLanguageId) {
		this.leaveLanguageId = leaveLanguageId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLeaveLanguage() {
		return leaveLanguage;
	}

	public void setLeaveLanguage(String leaveLanguage) {
		this.leaveLanguage = leaveLanguage;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

}
