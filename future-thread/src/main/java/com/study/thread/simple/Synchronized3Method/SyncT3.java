package com.study.thread.simple.Synchronized3Method;

/**
 * Created by wu on 2018/9/5.
 */
public class SyncT3 implements Runnable{
    static  SyncT3 instance=new SyncT3();
    static  int i=0;
    public static  synchronized  void increase(){
        i++;
    }
    @Override
    public void run() {
        for (int j=0;j<1000000;j++){
            increase();
        }
    }

    public static void main(String[] args) throws InterruptedException {

        //指向同一个instance
        //static  synchronized  void increase()
        //此时可以将线程指向不同实例
        Thread t1=new Thread(instance);
        Thread t2=new Thread(instance);
        Thread t3=new Thread(new SyncT3());
        Thread t4=new Thread(new SyncT3());
        t1.start();t2.start();
        t1.join();t2.join();
        t3.start();t4.start();
        t3.join();t4.join();
        System.out.println(i);

    }
}
