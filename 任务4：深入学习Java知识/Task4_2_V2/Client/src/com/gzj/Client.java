package com.gzj;

import java.net.Socket;
import java.io.*;

public class Client {

	public static void main(String[] args) {
		Socket client = null;
		try {

//			System.out.println("请输入服务器IP：");
//			BufferedReader localMessage = new BufferedReader(new InputStreamReader(System.in)); // 接受客户端从键盘输入的信息
//			String ip = localMessage.readLine();

			client = new Socket("127.0.0.1", 10086); // 创建客户端套接字

			BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream(), "UTF-8")); // 获取输入流

			System.out.println("从服务器" + client.getRemoteSocketAddress() + " 返回的时间：" + reader.readLine());

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				client.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
