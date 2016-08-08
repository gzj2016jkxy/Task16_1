/**
 * 
 */
package com.gzj.entity;

import java.io.Serializable;

/**
 * consume表：用来存放VIP用户购物的详细信息
 *
 */
public class Consume implements Serializable {

	private static final long serialVersionUID = 1L;

	private int consumeId;
	private Vip vip;
	private Commodity commodity;

	public Consume() {
	}

	public int getConsumeId() {
		return consumeId;
	}

	public void setConsumeId(int consumeId) {
		this.consumeId = consumeId;
	}

	public Vip getVip() {
		return vip;
	}

	public void setVip(Vip vip) {
		this.vip = vip;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

}
