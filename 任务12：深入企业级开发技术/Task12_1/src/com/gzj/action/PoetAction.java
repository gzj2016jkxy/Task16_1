/**
 * 
 */
package com.gzj.action;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.ICollectionDAO;
import com.gzj.dao.IPoetDAO;
import com.gzj.entity.Poet;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 诗集Action
 *
 */
public class PoetAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IPoetDAO poetDAO;
	private String searchcontent;
	private ICollectionDAO collectionDAO;

	public ICollectionDAO getCollectionDAO() {
		return collectionDAO;
	}

	public void setCollectionDAO(ICollectionDAO collectionDAO) {
		this.collectionDAO = collectionDAO;
	}

	public IPoetDAO getPoetDAO() {
		return poetDAO;
	}

	public void setPoetDAO(IPoetDAO poetDAO) {
		this.poetDAO = poetDAO;
	}

	public String getSearchcontent() {
		return searchcontent;
	}

	public void setSearchcontent(String searchcontent) {
		this.searchcontent = searchcontent;
	}

	public String searchByAuthor() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		Users us = (Users) session.getAttribute("User");

		Map<Integer, String> titles = poetDAO.searchByAuthor(searchcontent);
		if (titles == null) {
			return "nodata";
		}

		List<Integer> alreadyCollectID = collectionDAO.getPoetriesID(us.getUserid());

		session.setAttribute("Titles", titles);
		session.setAttribute("AlreadyCollectID", alreadyCollectID);

		return SUCCESS;
	}

	public String searchByTitle() throws Exception {
		List<String> contents = poetDAO.searchByTitle(searchcontent);
		if (contents == null) {
			return "nodata";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("Contents", contents);

		return SUCCESS;
	}

	public String searchByContent() throws Exception {
		List<Poet> poet = poetDAO.searchByContent(searchcontent);
		if (poet == null) {
			return "nodata";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.removeAttribute("Poet");
		session.setAttribute("Poet", poet);

		return SUCCESS;
	}

}
