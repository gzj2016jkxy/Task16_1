/**
 * 
 */
package com.gzj.dao;

import com.gzj.entity.Admin;

/**
 * 管理员DAO
 *
 */
public interface IAdminDAO {
	/**
	 * 登录核验
	 */
	public Admin checkAdmin(Admin admin);	
	
}
