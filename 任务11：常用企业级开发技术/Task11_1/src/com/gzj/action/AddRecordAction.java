/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IRecordDAO;
import com.gzj.entity.Commodity;
import com.gzj.entity.Consume;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 添加消费记录
 *
 */
public class AddRecordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IRecordDAO recordDAO;
	private int vipid;
	private int commodityId;

	public int getVipid() {
		return vipid;
	}

	public void setVipid(int vipid) {
		this.vipid = vipid;
	}

	public int getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}

	public IRecordDAO getRecordDAO() {
		return recordDAO;
	}

	public void setRecordDAO(IRecordDAO recordDAO) {
		this.recordDAO = recordDAO;
	}

	@Override
	public String execute() throws Exception {

		Vip vip = new Vip();
		vip.setVipId(vipid);
		Commodity commodity = new Commodity();
		commodity.setCommodityId(commodityId);

		Consume c = new Consume();
		c.setVip(vip);
		c.setCommodity(commodity);

		boolean result = recordDAO.save(c);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
