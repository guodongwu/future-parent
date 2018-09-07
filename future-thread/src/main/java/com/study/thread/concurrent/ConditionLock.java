package com.study.thread.concurrent;

import org.omg.PortableServer.THREAD_POLICY_ID;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Created by wu on 2018/9/6.
 */
public class ConditionLock implements  Runnable {
    public  static ReentrantLock lock=new ReentrantLock();
    public  static Condition condition=lock.newCondition();

    @Override
    public void run() {
        lock.lock();
        try {
            condition.await();
            System.out.println("Thread is going on ");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            lock.unlock();
        }

    }

    public static void main(String[] args) throws InterruptedException {
        ConditionLock t1=new ConditionLock();
        Thread t=new Thread(t1);
        t.start();
        Thread.sleep(2000);
        lock.lock();
        condition.signal();
        lock.unlock();

    }
}
