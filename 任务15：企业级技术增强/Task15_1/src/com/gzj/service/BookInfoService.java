package com.gzj.service;

import java.util.List;

import com.gzj.model.Book;
import com.gzj.model.BookInfo;

/**
 * 图书信息
 *
 */
public interface BookInfoService {
	
	/**
	 * 获取所有图书
	 */
	public List<BookInfo> getAll();
	
	/**
	 * 根据ID查找图书
	 */
	public BookInfo getOneById(int id);
	
	/**
	 * 根据ISBN查找图书
	 */
	public BookInfo getByIsbn(String isbn);
	
	/**
	 * 更新图书
	 */
	public boolean update(Book book);

	/**
	 * 删除图书
	 */
	public boolean delete(int id); 
	
	/**
	 * 添加图书
	 */
	public boolean save(Book book);
	
}
