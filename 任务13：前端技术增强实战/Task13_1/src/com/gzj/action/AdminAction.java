/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IAdminDAO;
import com.gzj.entity.Admin;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 管理员action
 *
 */
public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

	private static final long serialVersionUID = 1L;

	private Admin admin = new Admin();
	private IAdminDAO adminDAO;

	public IAdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(IAdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public String login() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Admin user1 = adminDAO.checkAdmin(admin);
		if (user1 != null) {
			session.setAttribute("Admin", user1);
			return SUCCESS;
		} else {
			return ERROR;
		}

	}

	public String logout() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.removeAttribute("Admin");

		return SUCCESS;
	}
	
	@Override
	public Admin getModel() {
		return admin;
	}

}
