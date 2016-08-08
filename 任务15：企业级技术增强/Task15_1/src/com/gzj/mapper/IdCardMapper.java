/**
 * 
 */
package com.gzj.mapper;

import java.util.List;

import com.gzj.model.IdCard;

/**
 * 证件类型
 *
 */
public interface IdCardMapper {
	
	/**
	 * 获取所有证件类型
	 */
	public List<IdCard> getAll();
	
	/**
	 * 获取类型ID
	 */
	public int getIdByName(String typeName);
	
}
