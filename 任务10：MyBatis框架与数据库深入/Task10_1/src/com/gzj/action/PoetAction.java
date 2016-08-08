/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IPoetDAO;
import com.gzj.entity.Poet;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 诗集Action
 *
 */
public class PoetAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IPoetDAO poetDAO;
	private String searchcontent;

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
		List<String> titles = poetDAO.searchByAuthor(searchcontent);
		if (titles == null) {
			return "nodata";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("Titles", titles);

		return "success";
	}

	public String searchByTitle() throws Exception {
		List<String> contents = poetDAO.searchByTitle("%" + searchcontent + "%");
		if (contents == null) {
			return "nodata";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("Contents", contents);

		return "success";
	}

	public String searchByContent() throws Exception {
		List<Poet> poet = poetDAO.searchByContent("%" + searchcontent + "%");
		if (poet == null) {
			return "nodata";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("Poet", poet);

		return "success";
	}

}
