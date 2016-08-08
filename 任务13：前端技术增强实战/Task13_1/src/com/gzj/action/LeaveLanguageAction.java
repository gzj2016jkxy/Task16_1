/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.gzj.dao.ILeaveLanguageDAO;
import com.gzj.entity.LeaveLanguage;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 留言action
 *
 */
public class LeaveLanguageAction extends ActionSupport implements ModelDriven<LeaveLanguage> {

	private static final long serialVersionUID = 1L;

	private LeaveLanguage leaveLanguage = new LeaveLanguage();
	private ILeaveLanguageDAO leaveLanguageDAO;

	public ILeaveLanguageDAO getLeaveLanguageDAO() {
		return leaveLanguageDAO;
	}

	public void setLeaveLanguageDAO(ILeaveLanguageDAO leaveLanguageDAO) {
		this.leaveLanguageDAO = leaveLanguageDAO;
	}

	public String getLeaveLanguage() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<LeaveLanguage> list = leaveLanguageDAO.getLeaveLanguage();
				
		if (list != null) {
			session.setAttribute("LeaveLanguage", list);
		}
		return SUCCESS;
	}

	public String addLeaveLanguage() throws Exception {
				
		LeaveLanguage message = new LeaveLanguage();
		
		message.setName(leaveLanguage.getName().equals("") ? "游客" : leaveLanguage.getName());
		message.setQq(leaveLanguage.getQq());
		message.setEmail(leaveLanguage.getEmail());
		message.setLeaveLanguage(leaveLanguage.getLeaveLanguage());
		message.setDateTime(leaveLanguage.getDateTime());

		boolean result = leaveLanguageDAO.addLeaveLanguage(message);
		if (result) {	
			ServletRequest request = ServletActionContext.getRequest();
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();

			List<LeaveLanguage> list = leaveLanguageDAO.getLeaveLanguage();
						
			if (list != null) {
				session.removeAttribute("LeaveLanguage");
				session.setAttribute("LeaveLanguage", list);
			}
			return SUCCESS;
		} else {
			return ERROR;
		}

	}
	
	public String adminLeaveLanguage() throws Exception {
		
		LeaveLanguage message = new LeaveLanguage();
		
		message.setName("管理员");
		message.setQq("");
		message.setEmail("");
		message.setLeaveLanguage(leaveLanguage.getLeaveLanguage());
		message.setDateTime(leaveLanguage.getDateTime());

		boolean result = leaveLanguageDAO.addLeaveLanguage(message);
		if (result) {	
			ServletRequest request = ServletActionContext.getRequest();
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();

			List<LeaveLanguage> list = leaveLanguageDAO.getLeaveLanguage();
						
			if (list != null) {
				session.removeAttribute("LeaveLanguage");
				session.setAttribute("LeaveLanguage", list);
			}
			return SUCCESS;
		} else {
			return ERROR;
		}

	}

	@Override
	public LeaveLanguage getModel() {
		return leaveLanguage;
	}
}
