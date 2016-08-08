/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 鲜花公司细节表produceDetails
 *
 */
public class ProduceDetails implements Serializable {

	private static final long serialVersionUID = 1L;

	private int produceId;
	private int sortId;
	private int goodsId;

	public int getProduceId() {
		return produceId;
	}

	public void setProduceId(int produceId) {
		this.produceId = produceId;
	}

	public int getSortId() {
		return sortId;
	}

	public void setSortId(int sortId) {
		this.sortId = sortId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

}
