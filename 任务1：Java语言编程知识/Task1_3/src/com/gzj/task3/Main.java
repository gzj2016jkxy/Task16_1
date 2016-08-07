package com.gzj.task3;

import java.util.Random;

/**
 * 测试类
 */
public class Main {
    /**
     * 程序入口
     */
    public static void main(String[] args) {
        int[] arr = new int[10];
        initArr(arr, 100);

        System.out.print("生成的数组为：");
        printArr(arr);

        System.out.print("生成数组的最大值为：");
        System.out.println(getMax(arr));

    }

    /**
     * 初始化一个最大元素值不超过maxValue的数组
     *
     * @param arr
     * @param maxValue
     */
    public static void initArr(int[] arr, int maxValue) {
        Random ran = new Random();
        for (int i = 0; i < arr.length; i++) {
            arr[i] = ran.nextInt(maxValue);
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
     * 获得数组中最大值
     *
     * @param arr 数组
     * @return 最大值
     */
    public static int getMax(int[] arr) {
        int max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (max < arr[i]) {
                max = arr[i];
            }
        }
        return max;
    }
}
