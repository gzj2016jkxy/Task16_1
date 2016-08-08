/**
 * 
 */
package com.gzj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzj.mapper.BookInfoMapper;
import com.gzj.model.Book;
import com.gzj.model.BookInfo;
import com.gzj.service.BookInfoService;

/**
 * 实现图书信息
 *
 */
@Service
@Transactional // 此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookInfoServiceImpl implements BookInfoService {

	@Resource
	private BookInfoMapper bookInfoMapper;

	@Override
	public List<BookInfo> getAll() {
		return bookInfoMapper.getAll();
	}

	@Override
	public BookInfo getOneById(int id) {
		return bookInfoMapper.getOneById(id);
	}

	@Override
	public BookInfo getByIsbn(String isbn) {
		return bookInfoMapper.getByIsbn(isbn);
	}

	@Override
	public boolean update(Book book) {
		return bookInfoMapper.update(book);
	}

	@Override
	public boolean delete(int id) {
		return bookInfoMapper.delete(id);
	}

	@Override
	public boolean save(Book book) {
		return bookInfoMapper.save(book);
	}
	
	
}
