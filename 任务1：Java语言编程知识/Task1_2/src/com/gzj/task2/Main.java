package com.gzj.task2;

import java.util.Set;

/**
 * 测试类
 */
public class Main {
    /**
     * 程序入口
     */
    public static void main(String[] args) {
        int[] frontArea = new int[35];
        int[] backArea = new int[12];

        initArr(frontArea);             //初始化前区数组
        System.out.print("前区数组：");
        printArr(frontArea);            //打印

        initArr(backArea);              //初始化后区数组
        System.out.print("后区数组：");
        printArr(backArea);             //打印

        Set<Integer> frontSet = CalcMethod.getNum(frontArea, 5);   //计算前区
        Set<Integer> backSet = CalcMethod.getNum(backArea, 2);     //计算后区

        System.out.println();
        System.out.println("一次开奖结果：");
        System.out.print("前区5个数字为：");
        printSet(frontSet);
        System.out.print("后区2个数字为：");
        printSet(backSet);

    }

    /**
     * 初始化数组
     *
     * @param arr 数组
     */
    public static void initArr(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            arr[i] = i + 1;
        }
    }

    /**
     * 打印数组
     *
     * @param arr 数组
     */
    public static void printArr(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    }

    /**
     * 打印SET
     *
     * @param set
     */
    public static void printSet(Set<Integer> set) {
        for (Integer num : set) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
