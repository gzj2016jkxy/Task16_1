/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IRecordDAO;
import com.gzj.entity.Consume;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 查询消费记录
 *
 */
public class QueryRecordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String osid;
	private IRecordDAO recordDAO;
	
	public String getOsid() {
		return osid;
	}

	public void setOsid(String osid) {
		this.osid = osid;
	}

	public IRecordDAO getRecordDAO() {
		return recordDAO;
	}

	public void setRecordDAO(IRecordDAO recordDAO) {
		this.recordDAO = recordDAO;
	}
	
	@Override
	public String execute() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;		
		HttpSession session = req.getSession();

		List<Consume> record = recordDAO.getAll();
		
		session.setAttribute("Record", record);
				
		//System.out.println("本次："+osid);
		return osid;
	}

}
