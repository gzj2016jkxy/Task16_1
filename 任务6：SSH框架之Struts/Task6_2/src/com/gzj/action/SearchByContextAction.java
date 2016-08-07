package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.pojo.Poets;
import com.gzj.service.poetInfoService;
import com.opensymphony.xwork2.ActionSupport;

public class SearchByContextAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String context;

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	@Override
	public String execute() throws Exception {		
		if (context != null) {
			List<Poets> poets = new poetInfoService().searchByContext(context);
			if (poets == null) {
				return "nodata";
			}

			ServletRequest request = ServletActionContext.getRequest();
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();
			session.setAttribute("Poets", poets);

			return "success";
		} else {
			return "nodata";
		}

	}

	
}
