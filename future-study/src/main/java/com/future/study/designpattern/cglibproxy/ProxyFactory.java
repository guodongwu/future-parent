package com.future.study.designpattern.cglibproxy;

import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Array;
import java.lang.reflect.Method;

/**
 * Created by wu on 2018/8/29.
 */
public class ProxyFactory implements MethodInterceptor {
   private  Object target;
    public  ProxyFactory(Object target){
        this.target=target;
    }
    public  Object getProxyInstance(){
        Enhancer en=new Enhancer();
        en.setSuperclass(target.getClass());
        en.setCallback(this);
        return en.create();
    }
    @Override
    public Object intercept(Object o, Method method, Object[] objects, MethodProxy methodProxy) throws Throwable {
        Object returnValue=method.invoke(target, objects);
        return returnValue;
    }
}
