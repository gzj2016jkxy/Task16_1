/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.LeaveLanguage;

/**
 * 留言DAO
 *
 */
public interface ILeaveLanguageDAO {

	/**
	 * 获取留言列表
	 */
	public List<LeaveLanguage> getLeaveLanguage();

	/**
	 * 增加留言
	 */
	public boolean addLeaveLanguage(LeaveLanguage language);
}
