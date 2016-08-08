/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Commodity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 修改商品信息
 *
 */
public class ModifyGoodsAction extends ActionSupport implements ModelDriven<Commodity> {

	private static final long serialVersionUID = 1L;

	private IGoodsDAO goodsDAO;
	private Commodity commodity = new Commodity();

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public String queryOne() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		int id = Integer.valueOf(req.getParameter("id"));

		Commodity OneGood = goodsDAO.getByID(id);
		session.setAttribute("OneGood", OneGood);
		return "modifyGoods";
	}

	public String modifyOne() throws Exception {
						
		boolean result = goodsDAO.update(commodity);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}	

	@Override
	public Commodity getModel() {
		
		return commodity;
	}

}
