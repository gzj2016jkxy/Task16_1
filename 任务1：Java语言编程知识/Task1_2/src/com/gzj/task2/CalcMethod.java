package com.gzj.task2;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/**
 * 计算类
 */
public class CalcMethod {
    /**
     * 从整形数组arr中取len个不重复数值
     *
     * @param arr 数组
     * @param len 长度
     * @return 取到的结果
     */
    public static Set<Integer> getNum(int[] arr, int len) {
        Set<Integer> set = new HashSet<>();
        Random ran = new Random();
        while (set.size() < len) {
            set.add(arr[ran.nextInt(arr.length)]);
        }

        return set;
    }
}
