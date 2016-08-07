package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.service.poetInfoService;
import com.opensymphony.xwork2.ActionSupport;

public class SearchByTitleAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String title;

	@Override
	public String execute() throws Exception {

		if (title != null) {
			List<String> contexts = new poetInfoService().searchByTitle(title);
			if (contexts == null) {
				return "nodata";
			}

			ServletRequest request = ServletActionContext.getRequest();
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();
			session.setAttribute("Contexts", contexts);

			return "success";
		} else {
			return "nodata";
		}

	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}	
}
