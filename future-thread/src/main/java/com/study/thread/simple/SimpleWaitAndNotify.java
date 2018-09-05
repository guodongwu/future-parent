package com.study.thread.simple;

/**
 * Created by wu on 2018/9/5.
 */
public class SimpleWaitAndNotify {
    final static  Object obj=new Object();
    public  static  class  T1 extends Thread{
        @Override
        public void run() {
            synchronized(obj){
                System.out.println(System.currentTimeMillis()+":T1 start");
               try {
                   System.out.println(System.currentTimeMillis()+":T1 wait for object");
                   obj.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println(System.currentTimeMillis()+":T1 end!");
            }
        }
    }
    public static  class T2 extends Thread{
        @Override
        public void run() {
            synchronized(obj){
                System.out.println(System.currentTimeMillis()+":T2 start! notify on thread");
                obj.notify();
                System.out.println(System.currentTimeMillis()+":T2 end!");
                try {
                    Thread.sleep(5000);
                    System.out.println(System.currentTimeMillis()+":T2 end!!");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void main(String[] args) {
        Thread t1=new T1();
        Thread t2=new T2();
        t1.start();
        t2.start();
    }
}
