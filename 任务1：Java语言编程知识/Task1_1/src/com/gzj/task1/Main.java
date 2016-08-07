package com.gzj.task1;

/**
 * 测试类
 */
public class Main {
    /**
     * 程序入口
     */
    public static void main(String[] args) {
        //多态实现
        Animal cat = new Cat();
        cat.voice();

        Animal dog = new Dog();
        dog.voice();
    }
}
