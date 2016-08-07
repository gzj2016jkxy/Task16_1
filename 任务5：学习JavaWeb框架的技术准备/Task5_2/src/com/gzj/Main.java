package com.gzj;

public class Main {

	public static void main(String[] args) {
		IAirPlane plane;
		plane = AirPlaneFactory.getInstance().build("客机");
		plane.getAirPlaneType();

		plane = AirPlaneFactory.getInstance().build("战斗机");
		plane.getAirPlaneType();
	}

}
