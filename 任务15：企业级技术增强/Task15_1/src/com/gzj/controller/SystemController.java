/**
 * 
 */
package com.gzj.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzj.model.Admin;
import com.gzj.service.AdminService;

/**
 * 系统数据维护
 *
 */
@Controller
@RequestMapping(value = "/gzj")
public class SystemController {

	@Autowired
	private AdminService adminService = null;// 管理员信息

	/**
	 * 跳转登录页面
	 */
	@RequestMapping(value = "/login")
	public String showLogin() {
		return "login";
	}

	/**
	 * 登录核验
	 */
	@RequestMapping(value = "/check")
	public String checkLogin(Admin admin, HttpServletRequest request) {

		Admin man = adminService.checkLogin(admin);

		if (man != null) { // 存在用户
			request.getSession().setAttribute("Admin", man);
			return "main";
		} else {
			return "login";
		}

	}

	/**
	 * 退出系统
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("Admin");
		return "login";
	}
	
	/**
	 * 跳转到修改密码页面
	 */
	@RequestMapping(value = "/toModifyPwd")
	public String toAddBookType() {
		return "modifyPwd";
	}
	
	/**
	 * 修改密码
	 */
	@RequestMapping("/modifyPwd")
	public String modifyPwd(ModelMap model, HttpServletRequest request) {
		
		String oldpwd=request.getParameter("oldpwd");
		String passWord=request.getParameter("passWord");
		Admin admin=(Admin) request.getSession().getAttribute("Admin");
		if (admin.getPassWord().equals(oldpwd)) {
						
			if (adminService.updatePwd(admin.getId(), passWord)) {
				request.getSession().removeAttribute("Admin");
				return "redirect:/gzj/login";
			} else {
				return "error";
			}			
			
		}else {
			request.getSession().setAttribute("msg", "密码错误！");
			return "redirect:/gzj/toModifyPwd";
		}	
		
	}
	
	/**
	 * 跳转到修改密码页面
	 */
	@RequestMapping(value = "/toAddAccount")
	public String toAddAccount() {
		return "addAccount";
	}
	
	/**
	 * 检查类型名称是否存在
	 */
	@RequestMapping(value = "/checkUserNameExist")
	public void checkUserNameExist(String userName, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";

		if (adminService.getByName(userName) == null) {
			result = "{\"result\":\"success\"}"; // 不存在
		}

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 添加用户
	 */
	@RequestMapping(value = "/addAccount")
	public String addAccount(Admin admin) {
		Admin ad = new Admin();
		ad.setUserName(admin.getUserName());
		ad.setPassWord(admin.getPassWord());
		ad.setMail(admin.getMail());
		
		if (adminService.save(ad)) {
			return "success";	
		}else {
			return "error";
		}
		
	}

}
