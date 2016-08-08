/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.ICollectionDAO;
import com.gzj.entity.Collection;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 添加收藏Action
 *
 */
public class AddCollectionAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private ICollectionDAO collectionDAO;
	public String info;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public void setCollectionDAO(ICollectionDAO collectionDAO) {
		this.collectionDAO = collectionDAO;
	}

	@Override
	public String execute() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		Users us = (Users) session.getAttribute("User");

		Collection collection = new Collection();
		collection.setUserid(us.getUserid());
				
		collection.setId(id);

		boolean result = collectionDAO.addCollection(collection);
		if (result) {
			info = "success";
			return SUCCESS;
		} else {
			info = "fail";
			return ERROR;
		}

	}
}
