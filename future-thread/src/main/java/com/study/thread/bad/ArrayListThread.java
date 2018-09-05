package com.study.thread.bad;

import com.study.error.Error;
import java.util.ArrayList;

/**
 * Created by wu on 2018/9/5.
 */
@Error
public class ArrayListThread {
    static ArrayList<Integer> al=new ArrayList<>(10);
    public  static  class AddTread implements Runnable{
        @Override
        public void run() {
            for(int i=0;i<10000;i++){
                al.add(i);
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread t1=new Thread(new ArrayListThread.AddTread());
        Thread t2=new Thread(new ArrayListThread.AddTread());
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println(al.size());
    }
}
