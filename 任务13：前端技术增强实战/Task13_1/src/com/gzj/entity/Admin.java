/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 管理员表admin
 *
 */
public class Admin implements Serializable {

	private static final long serialVersionUID = 1L;

	private int adminId;
	private String adminName;
	private String adminPass;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPass() {
		return adminPass;
	}

	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}

}
