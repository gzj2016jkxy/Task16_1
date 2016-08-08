/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * commodity表：用来存放商品的详细信息
 *
 */
public class Commodity implements Serializable {

	private static final long serialVersionUID = 1L;

	private int commodityId;
	private String commodityName;
	private double price;
	private double agio;
	
	public Commodity() {

	}
	
	public int getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}

	public String getCommodityName() {
		return commodityName;
	}

	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getAgio() {
		return agio;
	}

	public void setAgio(double agio) {
		this.agio = agio;
	}

}
