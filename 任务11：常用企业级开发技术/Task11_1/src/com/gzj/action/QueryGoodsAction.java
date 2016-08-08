/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Commodity;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 查询商品
 *
 */
public class QueryGoodsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String osid;
	private IGoodsDAO goodsDAO;

	public String getOsid() {
		return osid;
	}

	public void setOsid(String osid) {
		this.osid = osid;
	}

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	@Override
	public String execute() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;		
		HttpSession session = req.getSession();

		List<Commodity> goods = goodsDAO.getAll();

		session.setAttribute("Goods", goods);
		return osid;
	}

}
