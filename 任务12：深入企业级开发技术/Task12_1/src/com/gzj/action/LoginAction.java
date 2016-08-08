/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IUserDAO;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 登录、退出action
 *
 */
public class LoginAction extends ActionSupport implements ModelDriven<Users> {

	private static final long serialVersionUID = 1L;

	private Users users = new Users();
	private IUserDAO userDAO;

	public IUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public String login() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Users user1 = userDAO.checkUser(users);
		if (user1 != null) {
			session.setAttribute("User", user1);
			return "main";
		} else {
			return "loginerror";
		}

	}

	public String logout() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.removeAttribute("User");
		session.removeAttribute("Titles");
		session.removeAttribute("Contents");
		session.removeAttribute("Poet");
		session.removeAttribute("AlreadyCollectID");
		
		return SUCCESS;
	}

	@Override
	public Users getModel() {
		return users;
	}
}
