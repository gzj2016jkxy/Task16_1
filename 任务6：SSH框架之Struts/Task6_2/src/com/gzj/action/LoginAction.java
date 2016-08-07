package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.pojo.Users;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;

	@Override
	public String execute() throws Exception {
		
		if (username.equals("123") && password.equals("123")) {
			Users us=new Users();
			us.setUsername(username);
			us.setPassword(password);
			
			ServletRequest request=ServletActionContext.getRequest();
			HttpServletRequest req=(HttpServletRequest)request;
			HttpSession session=req.getSession();
			session.setAttribute("User", us);
			
			return "main";
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
