package com.gzj.action;

public class LoginAction {
	private String username;
	private String password;

	public String execute() {
		if (username.equals("123") && password.equals("123")) {
			return "message";
		} else {
			return "error";
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
