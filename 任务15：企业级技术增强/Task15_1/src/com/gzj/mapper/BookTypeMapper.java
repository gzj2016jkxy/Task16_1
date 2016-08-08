/**
 * 
 */
package com.gzj.mapper;

import java.util.List;

import com.gzj.model.BookType;

/**
 * 图书类别
 *
 */
public interface BookTypeMapper {
	
	/**
	 * 获取所有图书类别
	 */
	public List<BookType> getAll();
	
	/**
	 * 根据ID查找图书类别
	 */
	public BookType getOneById(int id);
	
	/**
	 * 更新图书类别
	 */
	public boolean update(BookType bookType);
	
	/**
	 * 根据类型名称查找图书类别
	 */
	public BookType getByName(String typeName);
	
	/**
	 * 添加图书类型
	 */
	public void addType(BookType bookType);
	
	/**
	 * 获取类型ID
	 */
	public int getIdByName(String typeName);
	
}
