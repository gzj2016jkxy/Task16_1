/**
 * 
 */
package com.gzj.action;

import com.gzj.service.CheckLogin;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 登陆
 *
 */
public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;

	@Override
	public String execute() throws Exception {

		if (new CheckLogin().checkUserExist(username, password)) {

			return "info";
		} else {
			return "loginerror";
		}
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
