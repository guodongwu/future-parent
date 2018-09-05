package com.study.thread.simple;

/**
 * Created by wu on 2018/9/5.
 */
public class SimpleVolatile {
    static  volatile  int i=0;

    private  static  boolean ready;
    private  static  int number;

    private  static  class  ReaderThread extends  Thread{
        @Override
        public void run() {
            while (!ready){
                System.out.println(number);
            }
        }
    }
    public  static  class  PlusTask implements  Runnable{

        @Override
        public void run() {
          /*  for(int k=0;k<10000;k++){
                i++;//非原子性 因此每次都小于100000
            }*/
          i=i+1;//原子性  执行为10
         }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread [] target=new Thread[10];
        for(int j=0;j<10;j++){
            target[j]=new Thread(new PlusTask());
            target[j].start();
        }
        //join保证加入
       for (int i=0;i<10;i++){
            target[i].join();
       }
        System.out.println(i);
        new ReaderThread().start();
        Thread.sleep(1000);
        number=42;
        ready=true;
        Thread.sleep(1000);

    }
}
