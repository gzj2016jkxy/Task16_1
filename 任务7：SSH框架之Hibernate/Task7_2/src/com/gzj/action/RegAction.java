/**
 * 
 */
package com.gzj.action;

import com.gzj.entity.Users;
import com.gzj.service.AddUser;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 注册
 *
 */
public class RegAction extends ActionSupport implements ModelDriven<Users> {
	
	private static final long serialVersionUID = 1L;
	
	private Users us=new Users();

	@Override
	public String execute() throws Exception {
						
		if (new AddUser().add(us)) {
			return "regsuccess";
		}else {
			return "regerror";
		}		
	}
	
	@Override
	public Users getModel() {
		
		return us;
	}	
}
