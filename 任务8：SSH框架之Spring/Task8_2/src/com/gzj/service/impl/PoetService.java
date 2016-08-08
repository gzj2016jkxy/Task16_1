/**
 * 
 */
package com.gzj.service.impl;

import java.util.List;

import com.gzj.dao.IPoetDAO;
import com.gzj.entity.Poet;
import com.gzj.service.IPoetService;

/**
 * 实现诗集服务接口
 *
 */
public class PoetService implements IPoetService {
	private IPoetDAO poetDAO;

	public IPoetDAO getPoetDAO() {
		return poetDAO;
	}

	public void setPoetDAO(IPoetDAO poetDAO) {
		this.poetDAO = poetDAO;
	}

	@Override
	public List<String> searchByAuthor(String author) {

		return poetDAO.searchByAuthor(author);
	}

	@Override
	public List<String> searchByTitle(String title) {

		return poetDAO.searchByTitle(title);
	}

	@Override
	public List<Poet> searchByContent(String content) {

		return poetDAO.searchByContent(content);
	}

}
