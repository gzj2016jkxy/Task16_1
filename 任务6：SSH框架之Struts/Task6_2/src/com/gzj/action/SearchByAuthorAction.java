package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.service.poetInfoService;
import com.opensymphony.xwork2.ActionSupport;

public class SearchByAuthorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String author;

	@Override
	public String execute() throws Exception {

		if (author != null) {
			List<String> titles = new poetInfoService().searchByAuthor(author);
			if (titles == null) {
				return "nodata";
			}

			ServletRequest request = ServletActionContext.getRequest();
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();							
			session.setAttribute("Titles", titles);

			return "success";
		} else {
			return "nodata";
		}

	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
