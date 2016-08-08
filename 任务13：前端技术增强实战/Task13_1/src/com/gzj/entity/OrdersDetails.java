/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 订单细节表ordersDetails
 *
 */
public class OrdersDetails implements Serializable {

	private static final long serialVersionUID = 1L;

	private int detailId;

	public int getDetailId() {
		return detailId;
	}

	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}

	private int ordersId;
	private String goodsName;
	private String goodsPrice;
	private int goodsCount;

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsCount() {
		return goodsCount;
	}

	public void setGoodsCount(int goodsCount) {
		this.goodsCount = goodsCount;
	}

}
