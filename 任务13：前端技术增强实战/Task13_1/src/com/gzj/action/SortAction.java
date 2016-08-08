/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.ISortDAO;
import com.gzj.entity.Sort;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 种类action
 *
 */
public class SortAction extends ActionSupport implements ModelDriven<Sort> {

	private static final long serialVersionUID = 1L;

	private Sort sort = new Sort();
	private ISortDAO sortDAO;

	public ISortDAO getSortDAO() {
		return sortDAO;
	}

	public void setSortDAO(ISortDAO sortDAO) {
		this.sortDAO = sortDAO;
	}

	public String addSort() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Sort ss = new Sort();
		ss.setSortName(sort.getSortName());

		String addResult = "";

		boolean result = sortDAO.addSort(ss);
		if (result) {
			addResult = "添加成功！";
		} else {
			addResult = "添加失败！";
		}

		session.setAttribute("AddSort", addResult);

		return SUCCESS;
	}

	public String getAllSort() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<Sort> list = sortDAO.getAllSort();
		if (list != null) {
			session.setAttribute("Sort", list);
		}

		return SUCCESS;
	}

	@Override
	public Sort getModel() {

		return sort;
	}

}
