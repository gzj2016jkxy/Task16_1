/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Collection;
import com.gzj.entity.Poet;

/**
 * 用户收集诗集DAO
 *
 */
public interface ICollectionDAO {

	/**
	 * 查找用户收藏的诗集
	 * 
	 * @param userid
	 *            用户ID
	 * @return 收藏的诗集
	 */
	public List<Poet> getCollectionByUserID(int userid);

	/**
	 * 查找用户收藏诗的ID
	 * 
	 * @param userid
	 *            用户ID
	 * @return 诗ID
	 */
	public List<Integer> getPoetriesID(int userid);

	/**
	 * 添加收藏
	 *
	 */
	public boolean addCollection(Collection collection);

	/**
	 * 移除收藏
	 * 
	 * @param id
	 *            诗ID
	 * @param userid
	 *            用户ID
	 * @return 是否成功
	 */
	public boolean delCollection(int id, int userid);

}
