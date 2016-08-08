/**
 * 
 */
package com.gzj.springmvc.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登陆
 *
 */
@Service
public class LoginService {

	public ModelAndView doLogin(String successPageUrl, String failPageUrl, String username, String password) {
		
//		System.out.println(successPageUrl);
//		System.out.println(failPageUrl);
			
		
		if (username.equals("123")&&password.equals("123")) {			
			
			return new ModelAndView(successPageUrl);
		}

		return new ModelAndView(failPageUrl);
	}

}
