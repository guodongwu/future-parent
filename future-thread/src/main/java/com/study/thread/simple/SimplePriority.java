package com.study.thread.simple;

/**
 * Created by wu on 2018/9/5.
 */
public class SimplePriority {
    public  final  static  int MIN_PRIORITY=1;
    public  final  static  int NORM_PRIORITY=5;
    public  final  static  int MAX_PRIORITY=10;

    public static  class HighPriority extends Thread{
        static  int count=0;

        @Override
        public void run() {
            while (true){
                synchronized (SimplePriority.class){
                    count++;
                    if(count>100000){
                        System.out.println("High is competed");
                        break;
                    }
                }
            }
        }
    }

    public  static  class LowPriority extends  Thread{
        static  int count=0;

        @Override
        public void run() {
            while (true){
                synchronized (SimplePriority.class){
                    count++;
                    if(count>100000){
                        System.out.println("Low is completed");
                        break;
                    }
                }
            }
        }
    }

    public static void main(String[] args) {
        Thread high=new HighPriority();
        Thread low=new LowPriority();
        high.setPriority(Thread.MAX_PRIORITY);
        low.setPriority(Thread.MIN_PRIORITY);
        low.start();
        high.start();
    }
}
