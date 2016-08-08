/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IVipDAO;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 查询VIP
 *
 */
public class QueryVIPAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String osid;
	private IVipDAO vipDAO;

	public IVipDAO getVipDAO() {
		return vipDAO;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	public String getOsid() {
		return osid;
	}

	public void setOsid(String osid) {
		this.osid = osid;
	}

	@Override
	public String execute() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;		
		HttpSession session = req.getSession();

		List<Vip> vips = vipDAO.getAll();

		session.setAttribute("VIP", vips);
		return osid;
	}

}
