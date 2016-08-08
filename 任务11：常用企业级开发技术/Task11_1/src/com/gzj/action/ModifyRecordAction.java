/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IRecordDAO;
import com.gzj.entity.Commodity;
import com.gzj.entity.Consume;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 修改消费记录
 *
 */
public class ModifyRecordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IRecordDAO recordDAO;
	private int consumeId;
	private int vipid;
	private int commodityId;

	public int getConsumeId() {
		return consumeId;
	}

	public void setConsumeId(int consumeId) {
		this.consumeId = consumeId;
	}

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

	public String queryOne() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		int id = Integer.valueOf(req.getParameter("id"));

		Consume OneRecord = recordDAO.getByID(id);
		session.setAttribute("OneRecord", OneRecord);
		return "modifyRecord";
	}

	public String modifyOne() throws Exception {

		Vip vip = new Vip();
		vip.setVipId(vipid);
		Commodity commodity = new Commodity();
		commodity.setCommodityId(commodityId);

		Consume c = new Consume();
		c.setConsumeId(consumeId);
		c.setVip(vip);
		c.setCommodity(commodity);

		boolean result = recordDAO.update(c);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
