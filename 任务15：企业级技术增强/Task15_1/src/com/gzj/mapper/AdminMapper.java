/**
 * 
 */
package com.gzj.mapper;

import com.gzj.model.Admin;

/**
 * 管理员信息
 *
 */
public interface AdminMapper {
	
	/**
	 * 登陆检验
	 */
	public Admin checkLogin(Admin admin);
	
	/**
	 * 修改密码
	 */
	public boolean updatePwd(int id,String passWord);
	
	/**
	 * 根据用户名查找用户
	 */
	public Admin getByName(String userName);
	
	/**
	 * 添加用户
	 */
	public boolean save(Admin admin);
	
}
