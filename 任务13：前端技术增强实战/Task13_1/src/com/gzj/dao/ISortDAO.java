/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Sort;

/**
 * 种类dao
 *
 */
public interface ISortDAO {
	
	/**
	 * 增加种类
	 */
	public boolean addSort(Sort sort);
	
	/**
	 * 获取所有种类
	 */
	public List<Sort> getAllSort();
}
