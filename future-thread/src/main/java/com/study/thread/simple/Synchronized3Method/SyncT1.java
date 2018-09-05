package com.study.thread.simple.Synchronized3Method;

/**
 * Created by wu on 2018/9/5.
 */
public class SyncT1 implements  Runnable {
    static  SyncT1 instance=new SyncT1();
    static  int i=0;

    @Override
    public void run() {
        for (int j=0;j<1000000;j++){
            synchronized (instance){
                i++;
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
       Thread t1= new Thread(instance);
        Thread t2= new Thread(instance);
        t1.start();
        t2.start();
        t1.join();t2.join();
        System.out.println(i);
    }
}
