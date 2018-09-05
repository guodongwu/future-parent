package com.study.thread.simple;

/**
 * Created by wu on 2018/9/5.
 * 守护线程  系统性服务 垃圾回收 jit等
 */
public class SimpleDaemon {
    public  static class DaemonT extends  Thread{
        @Override
        public void run() {
            while (true){
                System.out.println("I am alive");
                try{
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread t=new DaemonT();
        t.setDaemon(true);
        t.start();
        Thread.sleep(2000);
        System.out.println("OK");
    }
}
