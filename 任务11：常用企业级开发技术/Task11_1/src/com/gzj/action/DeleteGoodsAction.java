/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IGoodsDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 删除商品信息
 *
 */
public class DeleteGoodsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int id;
	private IGoodsDAO goodsDAO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	@Override
	public String execute() throws Exception {
		
		if (goodsDAO.deleteByID(id)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
		
	}
}
