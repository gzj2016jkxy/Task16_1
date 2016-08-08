/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Orders;
import com.gzj.entity.OrdersDetails;

/**
 * 订单DAO
 *
 */
public interface IOrdersDAO {

	/**
	 * 查询用户的订单
	 */
	public List<Orders> getOrderByName(String name);
	
	/**
	 * 查询订单详细信息
	 */
	public List<OrdersDetails> getDetailByID(int id);
	
	/**
	 * 查询用户的订单
	 */
	public Orders getOrderByID(int ordersId);
	
	/**
	 * 查询用户的订单
	 */
	public List<Orders> getAllOrder();
	
	
}
