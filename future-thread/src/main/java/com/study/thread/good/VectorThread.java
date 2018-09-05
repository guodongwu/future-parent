package com.study.thread.good;

import com.study.thread.bad.ArrayListThread;

import java.util.Vector;

/**
 * Created by wu on 2018/9/5.
 * Vector 代替 ArrayList
 */
public class VectorThread {
    static Vector<Integer> al=new Vector<>(10);
    public  static  class AddTread implements Runnable{
        @Override
        public void run() {
            for(int i=0;i<10000;i++){
                al.add(i);
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread t1=new Thread(new VectorThread.AddTread());
        Thread t2=new Thread(new VectorThread.AddTread());
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println(al.size());
    }
}
