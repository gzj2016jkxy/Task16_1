package com.gzj;

/**
 * 
 * 代理角色类
 *
 */
public class XiaoHong implements IBuyer {
	XiaoMing xiaoMing;

	public XiaoHong(IGoods goods) {
		xiaoMing = new XiaoMing(goods);
	}

	@Override
	public void IPhone6S() {
		xiaoMing.IPhone6S();
	}

	@Override
	public void Channel() {
		xiaoMing.Channel();
	}

}
