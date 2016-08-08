/**
 * 
 */
package com.gzj.action;

import com.gzj.dao.IUsersDAO;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ajax异步核验
 *
 */
public class CheckAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String usersName;
	private IUsersDAO usersDAO;
	public String info;

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public void setUsersDAO(IUsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}
	
	public String checkUsersName() throws Exception {
		Users us=usersDAO.getUserByName(usersName);
		if (us == null) {
			info = "0";
		} else {
			info = us.getUsersName();
		}

		//System.out.println(info);
		return SUCCESS;
	}

}
