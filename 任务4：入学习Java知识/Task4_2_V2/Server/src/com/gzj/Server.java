package com.gzj;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {
	private int port = 10086;
	private ServerSocket server;

	public static void main(String[] args) {
		new Server().service();
	}

	public Server() {
		try {
			server = new ServerSocket(port); // 创建服务器套接字
			System.out.println("服务器启动完毕");
			System.out.println("等待客户端连接...");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void service() {
		while (true) {
			Socket socket = null;

			try {
				socket = server.accept();// 等待客户端连接
				new MyThread(socket).start();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
