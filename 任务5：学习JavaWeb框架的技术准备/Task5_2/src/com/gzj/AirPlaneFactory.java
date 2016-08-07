package com.gzj;

public class AirPlaneFactory {
	private volatile static AirPlaneFactory uniqueInstance = null;

	private AirPlaneFactory() {
	}

	public static AirPlaneFactory getInstance() {
		if (uniqueInstance == null) {
			synchronized (AirPlaneFactory.class) {
				if (uniqueInstance == null) {
					uniqueInstance = new AirPlaneFactory();
				}
			}
		}

		return uniqueInstance;
	}

	public IAirPlane build(String type) {
		IAirPlane plane = null;
		switch (type) {
		case "客机":
			plane = new Aircraft();
			break;
		case "战斗机":
			plane = new Fighter();
			break;
		}

		return plane;
	}
}
