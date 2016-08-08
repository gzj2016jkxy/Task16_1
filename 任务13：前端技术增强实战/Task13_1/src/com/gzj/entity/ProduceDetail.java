/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 鲜花公司细节类
 *
 */
public class ProduceDetail implements Serializable {

	private static final long serialVersionUID = 1L;

	private String sortName;
	private String goodsName;
	private String produceName;

	public String getProduceName() {
		return produceName;
	}

	public void setProduceName(String produceName) {
		this.produceName = produceName;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

}
