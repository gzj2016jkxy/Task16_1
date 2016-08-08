/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Users;

/**
 * 用户DAO
 *
 */
public interface IUsersDAO {
	/**
	 * 登录核验
	 */
	public Users checkUser(Users user);	
	
	/**
	 * 添加用户
	 */
	public boolean addUser(Users user);
	
	/**
	 * 根据用户名获取用户信息
	 */
	public Users getUserByName(String name);
	
	/**
	 * 根据用户ID获取用户信息
	 */
	public Users getUserByID(int usersId);
	
	/**
	 * 获取所有用户信息
	 */
	public List<Users> getAllUser();
	
	/**
	 * 删除用户
	 */
	public boolean delUserByID(int usersId);
	
		
}
