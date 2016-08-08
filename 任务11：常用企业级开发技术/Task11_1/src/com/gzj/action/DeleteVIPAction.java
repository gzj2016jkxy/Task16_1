/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IVipDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 删除
 *
 */
public class DeleteVIPAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int vipId;
	private IVipDAO vipDAO;

	public int getVipId() {
		return vipId;
	}

	public void setVipId(int vipId) {
		this.vipId = vipId;
	}

	public IVipDAO getVipDAO() {
		return vipDAO;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	@Override
	public String execute() throws Exception {
		if (vipDAO.deleteByID(vipId)) {
			return SUCCESS;
		} else {
			return ERROR;
		}

	}

}
