/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Commodity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 添加商品
 *
 */
public class AddGoodsAction extends ActionSupport implements ModelDriven<Commodity> {

	private static final long serialVersionUID = 1L;

	private IGoodsDAO goodsDAO;
	private Commodity commodity = new Commodity();

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	@Override
	public String execute() throws Exception {
		Commodity c=new Commodity();
		c.setCommodityName(commodity.getCommodityName());
		c.setPrice(commodity.getPrice());
		c.setAgio(commodity.getAgio());
		
		boolean result = goodsDAO.save(c);
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
