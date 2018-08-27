package com.future.study.singleton;

/**
 * Created by wu on 2018/8/27.
 */
/** 饱汉模式(懒汉模式)
 * 优点：懒加载启动快，资源占用小，使用时才实例化，无锁。
 * 缺点：非线程安全。
 */
class Singleton {
    private  static  Singleton singleton=null;
    private  Singleton(){}
    public static Singleton getInstance(){
        if(singleton==null)
             singleton= new Singleton();
        return singleton;
    }
}
/** 饱汉模式(懒汉模式)--线程安全
 * 优点：懒加载启动快，资源占用小，使用时才实例化，无锁。
 * 缺点：synchronized 为独占排他锁，并发性能差。即使在创建成功以后，获取实例仍然是串行化操作。
 */
class  ThreadSingleton{
    private static ThreadSingleton instance = null;
    private  ThreadSingleton(){}
    public static  synchronized  ThreadSingleton getInstance(){
        if(instance==null)
            instance=new ThreadSingleton();
        return instance;
    }
}
/**
 * 饱汉模式(懒汉模式)--双重加锁检查DCL（Double Check Lock）
 * 优点：懒加载，线程安全。
 * 注：实例必须有 volatile 关键字修饰，其保证初始化完全。
 */
class  SafeSingleton{
    private  volatile  static  SafeSingleton instance=null;
    private  SafeSingleton(){}
    public  static  SafeSingleton getInstance(){
        if(instance == null){
            synchronized(SafeSingleton.class) {
                if(instance==null)
                    instance=new SafeSingleton();
            }
        }
        return instance;
    }

}
/**
 *饿汉模式
 * 优点：饿汉模式天生是线程安全的，使用时没有延迟。
 * 缺点：启动时即创建实例，启动慢，有可能造成资源浪费。
 */
class ESingleton {
    private static ESingleton instance = new ESingleton();
    private ESingleton(){
    }
    public static ESingleton getInstance(){
        return instance;
    }

}
/**
 *Holder模式
 * 优点：将懒加载和线程安全完美结合的一种方式（无锁）
 */
class HSingleton {
    /**
     * 类级的内部类，也就是静态的成员式内部类，该内部类的实例与外部类的实例
     * 没有绑定关系，而且只有被调用到才会装载，从而实现了延迟加载
     */
    private static class SingletonHolder{
        /**
         * 静态初始化器，由JVM来保证线程安全
         */
        private static HSingleton instance = new HSingleton();
    }
    /**
     * 私有化构造方法
     */
    private HSingleton(){
    }
    public static  HSingleton getInstance(){
        return SingletonHolder.instance;
    }

}
/**
 * 备注：

 1. 全局共享，独一份；

 2. 构造函数不暴露（如果暴露便不能保证一份），自己负责自己的构造；

 3. 懒汉式：Lazy load，用到才加载，非线程安全。如何保证线程安全呢：

 （1） synchronized getInstance()。

 （2）双重检查加锁（volatile）。

 4. 饿汉式：一开始就申请好，浪费了点资源，但其线程安全。

 5. Holder模式：

 （1）改成内部类，由JVM保证线程安全性。
 *
 *
 */