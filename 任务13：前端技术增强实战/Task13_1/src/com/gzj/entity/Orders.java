/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 订单表orders
 *
 */
public class Orders implements Serializable {

	private static final long serialVersionUID = 1L;

	private int ordersId;
	private String usersName;
	private String ordersPrice;
	private String ordersDatetime;

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getOrdersPrice() {
		return ordersPrice;
	}

	public void setOrdersPrice(String ordersPrice) {
		this.ordersPrice = ordersPrice;
	}

	public String getOrdersDatetime() {
		return ordersDatetime;
	}

	public void setOrdersDatetime(String ordersDatetime) {
		this.ordersDatetime = ordersDatetime;
	}

}
