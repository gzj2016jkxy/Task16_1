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
import com.gzj.entity.Goods;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 商品action
 *
 */
public class GoodAction extends ActionSupport implements ModelDriven<Goods> {

	private static final long serialVersionUID = 1L;

	private Goods goods = new Goods();
	private IGoodsDAO goodsDAO;

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	public String addGood() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		String addResult = "";
		boolean result=goodsDAO.addGood(goods);
		if (result) {
			addResult = "添加成功！";
		}else {
			addResult = "添加失败！";
		}
		
		session.setAttribute("AddGood", addResult);

		return SUCCESS;

	}
	
	public String getGoodByName() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		//System.out.println("传进来的名称"+goods.getGoodsName());

		List<Goods> list=goodsDAO.getGoodByName(goods.getGoodsName());
		if (list!=null) {
			session.setAttribute("SearchGood", list);
		}
		
		return SUCCESS;
	}

	public String delGood() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		int id=Integer.valueOf(req.getParameter("goodsId"));
		String delResult="";
		if (goodsDAO.delGoodById(id)) {
			delResult="删除成功！";
		}else {
			delResult="删除失败！";
		}
		session.setAttribute("DelResult", delResult);
		return SUCCESS;
	}

	@Override
	public Goods getModel() {
		return goods;
	}

}
