/**
 * 
 */
package com.gzj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzj.mapper.BookTypeMapper;
import com.gzj.model.BookType;
import com.gzj.service.BookTypeService;

/**
 * 实现图书类型
 *
 */
@Service
@Transactional // 此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookTypeServiceImpl implements BookTypeService {

	@Resource
	private BookTypeMapper bookTypeMapper;

	@Override
	public List<BookType> getAll() {
		return bookTypeMapper.getAll();
	}

	@Override
	public BookType getOneById(int id) {
		return bookTypeMapper.getOneById(id);
	}

	@Override
	public boolean update(BookType bookType) {
		return bookTypeMapper.update(bookType);
	}

	@Override
	public BookType getByName(String typeName) {
		return bookTypeMapper.getByName(typeName);
	}

	@Override
	public void addType(BookType bookType) {
		bookTypeMapper.addType(bookType);
	}

	@Override
	public int getIdByName(String typeName) {
		return bookTypeMapper.getIdByName(typeName);
	}

}
