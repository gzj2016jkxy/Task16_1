/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.entity.Poet;
import com.gzj.service.IPoetService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 诗集Action
 *
 */
public class PoetAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IPoetService poetService;
	private String searchcontent;

	public IPoetService getPoetService() {
		return poetService;
	}

	public String getSearchcontent() {
		return searchcontent;
	}

	public void setSearchcontent(String searchcontent) {
		this.searchcontent = searchcontent;
	}

	public void setPoetService(IPoetService poetService) {
		this.poetService = poetService;
	}

	public String searchByAuthor() throws Exception {
		List<String> titles = poetService.searchByAuthor(searchcontent);
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
		List<String> contents = poetService.searchByTitle(searchcontent);
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
		List<Poet> poet = poetService.searchByContent(searchcontent);
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
