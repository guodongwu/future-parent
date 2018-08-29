package com.future.study.designpattern.dynamicproxy;

/**
 * Created by wu on 2018/8/29.
 */
public class Singer implements ISinger {
    @Override
    public void sing() {
        System.out.println("唱歌");
    }
}
