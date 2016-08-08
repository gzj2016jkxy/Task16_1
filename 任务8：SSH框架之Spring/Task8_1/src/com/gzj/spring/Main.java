/**
 * 
 */
package com.gzj.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 主方法
 *
 */
public class Main {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");// 读取配置文件中的内容
		OutputHelper p = ctx.getBean("OutputHelper", OutputHelper.class);// 获取bean
		p.outPut();
	}
}
