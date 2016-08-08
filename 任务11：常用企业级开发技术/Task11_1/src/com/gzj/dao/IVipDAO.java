package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Vip;

/**
 * VIPDAO
 *
 */
public interface IVipDAO {
	
	public List<Vip> getAll();
	
	public Vip getByID(int id);
	
	public boolean save(Vip vip);
	
	public boolean update(Vip vip);
	
	public boolean deleteByID(int id);
	
}
