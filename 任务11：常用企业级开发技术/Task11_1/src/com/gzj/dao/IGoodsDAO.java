/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Commodity;

/**
 * 商品DAO
 *
 */
public interface IGoodsDAO {

	public List<Commodity> getAll();
	
	public Commodity getByID(int id);
	
	public boolean save(Commodity commodity);
	
	public boolean update(Commodity commodity);
	
	public boolean deleteByID(int id);
}
