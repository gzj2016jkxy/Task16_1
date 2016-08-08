/**
 * 
 */
package com.gzj.util;

import java.util.Map;

import com.gzj.entity.Admin;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 是否登录拦截器
 *
 */
public class LoginInter extends AbstractInterceptor {
	
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session=(Map)arg0.getInvocationContext().getSession();
		Admin users=(Admin)session.get("Admin");
		if (users==null) {
			return Action.LOGIN;
		}
		
		return arg0.invoke();
	}

}
