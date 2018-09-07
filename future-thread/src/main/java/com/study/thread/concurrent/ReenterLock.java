package com.study.thread.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Created by wu on 2018/9/6.
 */
public class ReenterLock  implements  Runnable{
    public static ReentrantLock lock=new ReentrantLock();
    /*public  static  int i=0;

    @Override
    public void run() {
        for (int j=0;j<100000;j++){
            lock.lock();
            i++;
            lock.unlock();
        }
    }
     */

    @Override
    public void run() {
        try {
            if(lock.tryLock(5, TimeUnit.SECONDS)){
                //System.out.println("has lock");
                Thread.sleep(5000);
            }else {
                System.out.println("get lock failed");
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            if(lock.isHeldByCurrentThread())
                lock.unlock();
        }
    }

    public static void main(String[] args) throws InterruptedException {
        ReenterLock rl=new ReenterLock();
        Thread t1=new Thread(rl);
        Thread t2=new Thread(rl);
        t1.start();t2.start();
        //t1.join(); t2.join();
       // System.out.println(i);
    }

}
