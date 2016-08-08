/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IVipDAO;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 修改VIP信息
 *
 */
public class ModifyVIPAction extends ActionSupport implements ModelDriven<Vip> {

	private static final long serialVersionUID = 1L;

	private IVipDAO vipDAO;
	private Vip vip = new Vip();

	public IVipDAO getVipDAO() {
		return vipDAO;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	public String queryOne() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		int id = Integer.valueOf(req.getParameter("id"));

		Vip OneVip = vipDAO.getByID(id);
		session.setAttribute("OneVip", OneVip);
		return "modifyVIP";
	}

	public String modifyOne() throws Exception {

		boolean result = vipDAO.update(vip);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}	

	@Override
	public Vip getModel() {

		return vip;
	}

}
