/**
 * 
 */
package com.gzj.service;

import java.util.List;

import com.gzj.entity.Poet;

/**
 * 诗集服务接口
 *
 */
public interface IPoetService {
	
	public List<String> searchByAuthor(String author);

	public List<String> searchByTitle(String title);

	public List<Poet> searchByContent(String content);

}
