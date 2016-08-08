package com.gzj.service;

import java.util.List;

import com.gzj.model.Reader;
import com.gzj.model.ReaderInfo;

/**
 * 读者信息
 *
 */
public interface ReaderInfoService {

	/**
	 * 获取所有读者信息
	 */
	public List<ReaderInfo> getAll();
	
	/**
	 * 根据ID查找读者
	 */
	public ReaderInfo getOneById(int id);
	
	/**
	 * 根据证件号码查找读者
	 */
	public ReaderInfo getByNo(String idCardNo);
	
	/**
	 * 更新图书
	 */
	public boolean update(Reader reader);
	
	/**
	 * 删除读者
	 */
	public boolean delete(int id); 
	
	/**
	 * 添加读者
	 */
	public boolean save(Reader reader);
	
}
