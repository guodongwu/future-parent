package com.study.thread.simple.Synchronized3Method;

/**
 * Created by wu on 2018/9/5.
 */
public class SyncT2 implements  Runnable {
    static  SyncT2 instance=new SyncT2();
    static  int i=0;
    public  synchronized  void increase(){
        i++;
    }
    @Override
    public void run() {
        for (int j=0;j<1000000;j++){
            increase();
        }
    }

    public static void main(String[] args) throws InterruptedException {
       /*
       //错误的使用方式
        Thread t1=new Thread(new SyncT2());
        Thread t2=new Thread(new SyncT2());
        */
        //指向同一个instance
        Thread t1=new Thread(instance);
        Thread t2=new Thread(instance);
        t1.start();t2.start();
        t1.join();t2.join();
        System.out.println(i);

    }
}
