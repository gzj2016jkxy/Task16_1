package com.gzj;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.util.Date;

public class MyThread extends Thread {
	private Socket socket;

	public MyThread(Socket socket) {
		this.socket = socket;
	}

	@Override
	public void run() {
		PrintWriter out = null;
		try {// 获得客户端输出流
			out = new PrintWriter(new OutputStreamWriter(
					socket.getOutputStream(), StandardCharsets.UTF_8.name()),
					true);
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (socket.isConnected()) {
			System.out.println("客户端名称为"
					+ socket.getInetAddress().getHostAddress() + "  连接成功！");

			Date date = new Date();
			System.out.println("客户端请求当前时间");
			DateFormat format = DateFormat.getDateTimeInstance();
			out.println(format.format(date));
		}

	}

}
