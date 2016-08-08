/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 退出
 *
 */
public class LogoutAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		ServletRequest request=ServletActionContext.getRequest();
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session=req.getSession();
		
		session.removeAttribute("User");
		session.removeAttribute("Titles");
		session.removeAttribute("Contents");
		session.removeAttribute("Poet");
		
		return SUCCESS;
	}
}
