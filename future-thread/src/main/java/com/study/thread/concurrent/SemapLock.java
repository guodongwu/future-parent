package com.study.thread.concurrent;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

/**
 * Created by wu on 2018/9/6.
 */
public class SemapLock implements  Runnable
{
    final Semaphore semaphore=new Semaphore(3);

    @Override
    public void run() {
        try {
            semaphore.acquire();
            Thread.sleep(2000);
            System.out.println(Thread.currentThread().getId()+":done!");
            semaphore.release();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        ExecutorService exec= Executors.newFixedThreadPool(10);
        final  SemapLock semapLock=new SemapLock();
        for (int i=0;i<20;i++){
            exec.submit(semapLock);
        }
    }
}
