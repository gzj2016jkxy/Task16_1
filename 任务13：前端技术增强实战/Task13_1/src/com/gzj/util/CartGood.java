/**
 * 
 */
package com.gzj.util;

/**
 * 购物车中的商品
 *
 */
public class CartGood {
	private String goodsName; // 商品名
	private float goodsPrice; // 单价
	private int quantity; // 数量

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public float getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(float goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
