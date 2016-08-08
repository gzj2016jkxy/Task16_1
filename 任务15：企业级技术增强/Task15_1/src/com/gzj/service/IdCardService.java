package com.gzj.service;

import java.util.List;

import com.gzj.model.IdCard;

/**
 * 证件类型
 *
 */
public interface IdCardService {

	/**
	 * 获取所有证件类型
	 */
	public List<IdCard> getAll();
	
	/**
	 * 获取类型ID
	 */
	public int getIdByName(String typeName);
	
}
