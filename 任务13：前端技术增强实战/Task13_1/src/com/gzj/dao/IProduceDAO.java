/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Produce;
import com.gzj.entity.ProduceDetail;

/**
 * 厂商DAO
 *
 */
public interface IProduceDAO {
	
	/**
	 * 获取厂商列表
	 */
	public List<Produce> getProduce();
	
	/**
	 * 根据produceId获取明细
	 */
	public List<ProduceDetail> getDetail(int produceId);
	
	/**
	 * 添加
	 */
	public boolean addProduce(Produce produce);
	
	/**
	 * 删除
	 */
	public boolean delProduce(int produceId);
}
