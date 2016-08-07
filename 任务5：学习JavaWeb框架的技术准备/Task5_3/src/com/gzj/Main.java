package com.gzj;

public class Main {

	public static void main(String[] args) {
		IGoods iPhone6S = new IPhone6S();
		XiaoHong xiaoHong = new XiaoHong(iPhone6S);
		xiaoHong.IPhone6S();

		IGoods channel = new Channel();
		xiaoHong = new XiaoHong(channel);
		xiaoHong.Channel();
	}

}
