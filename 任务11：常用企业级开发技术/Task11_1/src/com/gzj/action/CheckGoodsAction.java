/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Commodity;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 检查商品
 *
 */
public class CheckGoodsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int commodityId;
	private IGoodsDAO goodsDAO;
	public String info;

	public int getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String execute() throws Exception {

		Commodity c = goodsDAO.getByID(commodityId);
		if (c == null) {
			info = "0";
		} else {
			info = c.getCommodityName() + "," + c.getPrice() + ","
					+ (double) Math.round(c.getPrice() * c.getAgio() * 100) / 100;
		}

		return SUCCESS;
	}
}
