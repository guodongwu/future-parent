package com.future.study.spring;

public class  Test{
    public static void main(String[] args) throws Exception {
        Settlement settlement=new Settlement();
        System.out.println("顾客需支付：" + settlement.buy(5000));
        System.out.println("顾客需支付：" + settlement.buy(10000));
        System.out.println("顾客需支付：" + settlement.buy(10000));
        System.out.println("顾客需支付：" + settlement.buy(10000));
    }
}
