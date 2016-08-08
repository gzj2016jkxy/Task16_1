/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * 订购鲜花公司表produce
 *
 */
public class Produce implements Serializable {

	private static final long serialVersionUID = 1L;

	private int produceId;
	private String produceName;

	public int getProduceId() {
		return produceId;
	}

	public void setProduceId(int produceId) {
		this.produceId = produceId;
	}

	public String getProduceName() {
		return produceName;
	}

	public void setProduceName(String produceName) {
		this.produceName = produceName;
	}

}
