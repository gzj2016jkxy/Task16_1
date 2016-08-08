/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IVipDAO;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 检查VIP
 *
 */
public class CheckVIPAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int vipid;
	private IVipDAO vipDAO;
	public String info;

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	public int getVipid() {
		return vipid;
	}

	public void setVipid(int vipid) {
		this.vipid = vipid;
	}

	@Override
	public String execute() throws Exception {	
		
		Vip v = vipDAO.getByID(vipid);
		if (v == null) {
			info = "0";
		} else {
			info = v.getName();
		}

		//System.out.println(info);
		return SUCCESS;

	}
}
