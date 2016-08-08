/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Consume;

/**
 * 消费记录DAO
 *
 */
public interface IRecordDAO {

	public List<Consume> getAll();
	
	public Consume getByID(int id);
	
	public boolean save(Consume consume);
	
	public boolean update(Consume consume);
	
	public boolean deleteByID(int id);
	
}
