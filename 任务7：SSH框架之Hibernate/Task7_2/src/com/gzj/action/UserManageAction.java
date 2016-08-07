/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.entity.Users;
import com.gzj.service.SearchUser;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户管理
 *
 */
public class UserManageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;	

	@Override
	public String execute() throws Exception {
		List<Users> users = new SearchUser().getAllUser();
		
		if (users != null) {
			ServletRequest request=ServletActionContext.getRequest();
			HttpServletRequest req=(HttpServletRequest)request;
			HttpSession session = req.getSession();
			session.setAttribute("users", users);
			return "mgr";
		}else {
			return "nouser";
		}		
	}
}
