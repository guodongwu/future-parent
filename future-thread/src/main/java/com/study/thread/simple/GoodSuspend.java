package com.study.thread.simple;

/**
 * Created by wu on 2018/9/5.
 */
public class GoodSuspend {
    public  static Object obj=new Object();
    public  static class  ChangeObjectThread extends Thread{
        volatile  boolean suspendme=false;

        public  void suspendMe(){
            suspendme=true;
                    ;
        }
        public  void resumeMe(){
            suspendme=false;
            synchronized (this){
                notify();
            }
        }

        @Override
        public void run() {
            while (true){
                synchronized (this){
                    while (suspendme){
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                synchronized (obj){
                    System.out.println("in ChangeObjectThread");
                }
                Thread.yield();
            }
        }
    }
    public  static  class ReadObjectThread extends  Thread{
        @Override
        public void run() {
            while (true){
                synchronized (obj){
                    System.out.println("in ReadObjectThread");
                }
                Thread.yield();
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
        ChangeObjectThread t1=new ChangeObjectThread();
        ReadObjectThread t2=new ReadObjectThread();
        t1.start();
        t2.start();
        Thread.sleep(1000);
        t1.suspendMe();
        System.out.println("Suspend t1 2 sec");
        Thread.sleep(2000);
        System.out.println("Resume t1");
        t1.resumeMe();
    }
}
