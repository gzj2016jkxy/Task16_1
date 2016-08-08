/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.gzj.dao.IUsersDAO;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 用户action
 *
 */
public class UsersAction extends ActionSupport implements ModelDriven<Users> {

	private static final long serialVersionUID = 1L;

	private Users users = new Users();
	private IUsersDAO usersDAO;
	
	public IUsersDAO getUsersDAO() {
		return usersDAO;
	}

	public void setUsersDAO(IUsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	public String login() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Users user1 = usersDAO.checkUser(users);
		if (user1 != null) {
			session.setAttribute("Users", user1);
		}
		return SUCCESS;

	}

	public String logout() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.removeAttribute("Users");

		return SUCCESS;
	}

	public String reg() throws Exception {
		Users us = new Users();
		us.setUsersName(users.getUsersName());
		us.setUsersPass(users.getUsersPass());
		us.setUsersPassQuestion(users.getUsersPassQuestion());
		us.setUsersPassReply(users.getUsersPassReply());
		us.setUsersTrueName(users.getUsersTrueName());
		us.setUsersAddress(users.getUsersAddress());
		us.setUsersPhone(users.getUsersPhone());
		us.setUsersE_mail(users.getUsersE_mail());

		boolean result = usersDAO.addUser(us);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String getUserByName() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		session.removeAttribute("Users");
		Users user1 = usersDAO.getUserByName(users.getUsersName());
		if (user1 != null) {
			session.setAttribute("Users", user1);
		}
		return SUCCESS;

	}

	public String getUserByID() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.removeAttribute("Users");
		Users user1 = usersDAO.getUserByID(users.getUsersId());
		if (user1 != null) {
			session.setAttribute("Users", user1);
		}
		return SUCCESS;

	}

	public String getAllUser() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.removeAttribute("Users");
		List<Users> user1 = usersDAO.getAllUser();
		if (user1 != null) {
			session.setAttribute("Users", user1);
		}
		return SUCCESS;

	}

	public String delUser() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		//System.out.println("传进来的ID："+users.getUsersId());

		if (usersDAO.delUserByID(users.getUsersId())) {

			List<Users> user1 = usersDAO.getAllUser();
			if (user1 != null) {
				session.setAttribute("Users", user1);
			}
		}else {
			System.out.println("删除失败！");
		}
		
		return SUCCESS;
	}

	@Override
	public Users getModel() {
		return users;
	}

}
