/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.ICollectionDAO;
import com.gzj.entity.Poet;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 诗集收藏Action
 *
 */
public class CollectionAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private ICollectionDAO collectionDAO;

	public ICollectionDAO getCollectionDAO() {
		return collectionDAO;
	}

	public void setCollectionDAO(ICollectionDAO collectionDAO) {
		this.collectionDAO = collectionDAO;
	}

	public String getCollection() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		Users us = (Users) session.getAttribute("User");

		List<Poet> poet = collectionDAO.getCollectionByUserID(us.getUserid());
		if (poet == null) {
			return "nodata";
		}
		session.removeAttribute("Poet");
		session.setAttribute("Poet", poet);
		return SUCCESS;
	}
}
