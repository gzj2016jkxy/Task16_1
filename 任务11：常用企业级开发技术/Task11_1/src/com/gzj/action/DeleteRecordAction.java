/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IRecordDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 删除消费记录
 *
 */
public class DeleteRecordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int id;
	private IRecordDAO recordDAO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public IRecordDAO getRecordDAO() {
		return recordDAO;
	}

	public void setRecordDAO(IRecordDAO recordDAO) {
		this.recordDAO = recordDAO;
	}

	@Override
	public String execute() throws Exception {
		
		if (recordDAO.deleteByID(id)) {
			return SUCCESS;
		} else {
			return ERROR;
		}

	}
}
