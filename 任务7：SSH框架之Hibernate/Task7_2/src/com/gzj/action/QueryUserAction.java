/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.entity.Users;
import com.gzj.service.SearchUser;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 查看
 *
 */
public class QueryUserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		
		ServletRequest request=ServletActionContext.getRequest();
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session = req.getSession();
		
		int id=Integer.valueOf(req.getParameter("id"));
		Users us=new SearchUser().getUserById(id);
		session.setAttribute("user", us);
		return "info";
	}
}
