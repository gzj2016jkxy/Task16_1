/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IVipDAO;
import com.gzj.entity.Vip;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 添加VIP
 *
 */
public class AddVIPAction extends ActionSupport implements ModelDriven<Vip> {

	private static final long serialVersionUID = 1L;

	private IVipDAO vipDAO;
	private Vip vip = new Vip();

	public IVipDAO getVipDAO() {
		return vipDAO;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	@Override
	public String execute() throws Exception {
				
		Vip v=new Vip();
		v.setName(vip.getName());
		v.setAge(vip.getAge());
		v.setJoinTime(vip.getJoinTime());
		v.setProfession(vip.getProfession());
		
		boolean result = vipDAO.save(v);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	@Override
	public Vip getModel() {
		
		return vip;
	}

}
