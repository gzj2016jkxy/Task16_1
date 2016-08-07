package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.service.SearchUser;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteUserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		ServletRequest request=ServletActionContext.getRequest();
		HttpServletRequest req=(HttpServletRequest)request;
				
		int id=Integer.valueOf(req.getParameter("id"));
		
		if (new SearchUser().deleteUserById(id)) {
			return "delete_success";
		}else {
			return "delete_fail";
		}
	}
}
