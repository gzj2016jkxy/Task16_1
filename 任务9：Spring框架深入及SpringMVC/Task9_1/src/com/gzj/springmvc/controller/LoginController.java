/**
 * 
 */
package com.gzj.springmvc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gzj.springmvc.service.LoginService;

/**
 * 登陆
 *
 */
@Controller
public class LoginController {

	@Resource
	LoginService service;

	@Resource
	HttpServletRequest request;

	@RequestMapping("login")
	public ModelAndView doLogin() {

		String successPageUrl = "/message.jsp";
		String failPageUrl = "/error.jsp";

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// System.out.println(username + " " + password);

		return service.doLogin(successPageUrl, failPageUrl, username, password);

	}

}
