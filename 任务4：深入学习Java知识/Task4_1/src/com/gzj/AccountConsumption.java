package com.gzj;

class AccountConsumption {
	public static void main(String[] args) {
		final Consumption accountConsumption = new Consumption(100);

		// 开启存款线程
		new Thread(new Runnable() {
			@Override
			public void run() {
				int i = 0;
				while (i < 1000) {
					accountConsumption.deposit();
					i++;
				}
			}
		}).start();

		// 开启取款线程
		new Thread(new Runnable() {
			@Override
			public void run() {
				int j = 0;
				while (j < 1000) {
					accountConsumption.withdraw();
					j++;
				}
			}
		}).start();
	}
}

/**
 * 账户资金变动处理类
 */
class Consumption {
	private int money = 100;

	public Consumption(int money) {
		this.money = money;
		System.out.println("账户初始的资金为：" + this.money + "元");
	}

	public synchronized void deposit() { // 存款
		money += 1;
		System.out.println("向账户存了1元，账户还有" + money + "元");
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	public synchronized void withdraw() { // 取款
		if (money == 0) {
			return;
		}
		money -= 1;
		System.out.println("向账户取了1元，账户还有" + money + "元");
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
