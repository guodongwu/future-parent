package com.future.study.designpattern.cglibproxy;

/**
 * Created by wu on 2018/8/29.
 */
public class SingerTest {
    public static void main(String[] args) {
        Singer singer=new Singer();
        Singer proxy= (Singer) new ProxyFactory(singer).getProxyInstance();
        proxy.sing();
    }
}
