package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Poet;

/**
 * 
 * 诗集DAO
 *
 */
public interface IPoetDAO {

	public List<String> searchByAuthor(String author);

	public List<String> searchByTitle(String title);

	public List<Poet> searchByContent(String content);
	
}
