package com.gzj;

/**
 * 
 * 真实角色类
 *
 */
public class XiaoMing implements IBuyer {
	IGoods goods;

	public XiaoMing(IGoods goods) {
		this.goods = goods;
	}

	@Override
	public void IPhone6S() {
		System.out.println("买了" + goods.getName());
	}

	@Override
	public void Channel() {
		System.out.println("买了" + goods.getName());
	}

}
