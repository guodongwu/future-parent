package com.future.study.designpattern.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Created by wu on 2018/8/29.
 */
public class SingerTest {
    public static void main(String[] args) {
        Singer target= new Singer();
        ISinger proxy= (ISinger) Proxy.newProxyInstance(
                target.getClass().getClassLoader(),
                target.getClass().getInterfaces(),
                new InvocationHandler() {
                    @Override
                    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                        System.out.println("Hello");
                        Object returnValue=method.invoke(target,args);
                        System.out.println("thanks");
                        return returnValue;
                    }
                }
        );
        proxy.sing();

    }
}
