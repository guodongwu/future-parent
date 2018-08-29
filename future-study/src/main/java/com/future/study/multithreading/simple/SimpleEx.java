package com.future.study.multithreading.simple;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.*;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Created by wu on 2018/8/27.
 */

class SimpleEx   {
    public static void main(String[] args) {
        try {
            // extends thread
           /* Thread thread = new ThreadEx();
            thread.setName("threadEx-1");
            thread.start();
            //implement runnable
            RunnableEx runnableEx=new RunnableEx();
            Thread thread2 = new Thread(runnableEx);
            thread2.start();
            Thread.sleep(1000);
            runnableEx.stopThread();
            //implement Callable
            Callable<Integer> myCallable=new CallableEx();
            FutureTask<Integer> ft=new FutureTask<Integer>(myCallable);
            Thread callThread=new Thread(ft);
            callThread.start();

            int sum=ft.get();
            System.out.println("總數"+sum);
            ExecutorService executorService=Executors.newCachedThreadPool();
            CallableEx callableEx=new CallableEx();
            FutureTask<Integer> futureTask=new FutureTask<Integer>(callableEx);
            executorService.submit(futureTask);
            Future<Integer> future=executorService.submit(callableEx);
            executorService.shutdown();
            System.out.println("綫程結束，主綫程繼續");
            System.out.println(future.get());
            System.out.println(futureTask.get());
            System.out.println("OVER!");
            ExecutorService service=Executors.newFixedThreadPool(4);
            for (int i=0;i<10;i++){
                service.execute(new MyExecutor(i));
            }
            service.shutdown();
            ExecutorService service=Executors.newCachedThreadPool();
            Semaphore semaphore=new Semaphore(2);
            for (int i=0;i<10;i++){
                service.submit(new MySemaphore(i+1,semaphore));
            }
            service.shutdown();
            ExecutorService service=Executors.newCachedThreadPool();
            LockObject object=new LockObject();
            for (int i=0;i<10;i++){
                service.submit(new MyReentrantLock(i,object));
            }
            service.shutdown();
           ExecutorService service=Executors.newCachedThreadPool();
            for(int i=0;i<10;i++){
                service.submit(new MyBlockingQueue(i));
            }
            Thread thread=new Thread(){
                @Override
                public void run() {
                    while (true){
                        try {
                            Thread.sleep((int) (Math.random() * 1000));
                            if(MyBlockingQueue.deque.isEmpty()){
                                break;
                            }
                            String str = MyBlockingQueue.deque.take();
                            System.out.println(str + " has take!");

                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            };
            service.submit(thread);
            service.shutdown();*/
            ExecutorService service=Executors.newCachedThreadPool();
            CompletionService<String> completionService=new ExecutorCompletionService<String>(service);
            for (int i=0;i<10;i++){
                completionService.submit(new MyCompletionService(i));
            }
            for (int i=0;i<10;i++){
                System.out.println(completionService.take().get());
            }
            service.shutdown();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    }

class ThreadEx extends Thread{
    @Override
    public void run() {
        for (int i=0;i<100;i++){
            System.out.println(Thread.currentThread().getName()+"-"+i);
        }
    }
}

class RunnableEx implements Runnable{
    private  boolean isRunning=true;
    private  int i=0;
    @Override
    public void run() {
       while (isRunning){
            System.out.println(Thread.currentThread().getName()+"-"+i);
            i++;
           try {
               Thread.sleep(20);
           } catch (InterruptedException e) {
               e.printStackTrace();
           }
       }
    }
    public  void stopThread(){
        System.out.println(Thread.currentThread().getName()+"-"+i+"停止運行");
        this.isRunning=false;

    }
}

class CallableEx implements Callable<Integer>{
    @Override
    public Integer call() throws Exception {
        int sum=0;
        for (int i=0;i<100;i++){
            System.out.println(Thread.currentThread().getName()+"i");
            sum+=i;
        }
        return sum;
    }
}

/*
    固定綫程數量
    等待結束后開始
 */
class MyExecutor extends Thread{
    private  int index;
    public  MyExecutor(int i){
        this.index=i;
    }

    @Override
    public void run() {
        System.out.println("["+this.index+"] starting..");
        try {
            Thread.sleep((int)(Math.random()*1000));
            System.out.println("["+this.index+"] ended");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

/**
 * acquire()用来获取一个许可，若无许可能够获得，则会一直等待，直到获得许可。
 *release()用来释放许可。注意，在释放许可之前，必须先获获得许可。
 *通过availablePermits()方法得到可用的许可数目。
 * Semaphore其实和锁有点类似，它一般用于控制对某组资源的访问权限
 */
class MySemaphore extends  Thread{
    private  int id;
    Semaphore semaphore;
    public MySemaphore(int i ,Semaphore semaphore){
        this.id=i;
        this.semaphore=semaphore;
    }

    @Override
    public void run() {
        if(semaphore.availablePermits()>0){
            System.out.println("顾客["+this.id+"]进入厕所，有空位");
        }else{
            System.out.println("顾客["+this.id+"]进入厕所，没空位，排队");
        }
        try {
            semaphore.acquire();
            System.out.println("顾客["+this.id+"]获得坑位");
            Thread.sleep((int)(Math.random()*1000));
            System.out.println("顾客["+this.id+"]使用完毕");
            semaphore.release();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

//==========start===============
class MyReentrantLock extends  Thread{
    private  LockObject lock;
    private  int id;
public  MyReentrantLock(int i ,LockObject object){
    this.id=i;
    this.lock=object;
}
    @Override
    public void run() {
        lock.print(id);
    }

    public  void printStr(String str){
        System.out.println(str+"获得");
    }
}

class  LockObject {
    private  ReentrantLock lock=new ReentrantLock();
    public  void print(int str){

        try {
            lock.lock();
            System.out.println(str+"获得");
            Thread.sleep((int)(Math.random()*1000));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            System.out.println(str+"释放");
            lock.unlock();
        }
    }
}

//==========end==================
class  MyBlockingQueue extends  Thread{
    public static BlockingDeque<String> deque=new LinkedBlockingDeque<>();
    private  int index;
    public  MyBlockingQueue(int i){
        this.index=i;
    }

    @Override
    public void run() {
        try {
            deque.put(String.valueOf(this.index));
            System.out.println("{" + this.index + "} in queue!");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

class  MyCompletionService implements  Callable<String>{

    private  int id;
    public  MyCompletionService(int id){
        this.id=id;
    }
    @Override
    public String call() throws Exception {
        Integer time=(int)(Math.random()*1000);
        System.out.println(this.id+" start");
        Thread.sleep(time);
        System.out.println(this.id+" end");
        return this.id+":"+time;
    }
}

/**
 * 可以实现类似计数器的功能。
 * 比如有一个任务A，它要等待其他4个任务执行完毕之后才能执行，
 * 此时就可以利用CountDownLatch来实现这种功能了
 * countDown
 * CountDownLatch一般用于某个线程A等待若干个其他线程执行完任务之后，它才执行
 * CountDownLatch是不能够重用的
 */
class  MyCountDownLatch {
    public static void main(String[] args) {
        final  CountDownLatch begin=new CountDownLatch(1);
        final  CountDownLatch end=new CountDownLatch(10);
        final  ExecutorService executorService=Executors.newFixedThreadPool(10);
        for (int i=0;i<10;i++){
            final int NO=i+1;
            Runnable run=new Runnable(){
                @Override
                public void run() {
                    try {
                        begin.await();
                        Thread.sleep((long) (Math.random() * 10000));
                        System.out.println("No." + NO + " arrived");

                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }finally {
                        end.countDown();
                    }
                }
            };
            executorService.submit(run);
        }

        try {
            System.out.println("Game Start");
            begin.countDown();
            end.await();
            System.out.println("Game Over");
            executorService.shutdown();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

}

/**
*假若有若干个线程都要进行写数据操作，
 * 并且只有所有线程都完成写数据操作之后，
 * 这些线程才能继续做后面的事情，
 * 此时就可以利用CyclicBarrier了
 * await
 * 一般用于一组线程互相等待至某个状态，然后这一组线程再同时执行
 * CyclicBarrier是可以重用的。
 */
class  MyCycliBarrier{
    private  static  int[]timeWalk={5,8,15,15,10};
    private static  int []timeSelf={1,3,4,4,5};
    private  static int []timeBus={2,3,6,6,7};
    static  String now(){
        SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
        return  sdf.format(new Date())+":";
    }
    static  class  Tour implements  Runnable{
        private int []times;
        private  CyclicBarrier barrier;
        private String tourName;
        public  Tour(CyclicBarrier barrier,String tourName,int[]times){
            this.times=times;
            this.tourName=tourName;
            this.barrier=barrier;
        }
        public  void run(){
             try {
                 Thread.sleep(times[0] * 1000);
                 System.out.println(now() + tourName + " Reached Shenzhen");
                 barrier.await();
                 System.out.println(now() + tourName + " Reached Guangzhou");
                 barrier.await();
                 Thread.sleep(times[2] * 1000);
                 System.out.println(now() + tourName + " Reached Shaoguan");
                 barrier.await();
                 Thread.sleep(times[3] * 1000);
                 System.out.println(now() + tourName + " Reached Changsha");
                 barrier.await();
                 Thread.sleep(times[4] * 1000);
                 System.out.println(now() + tourName + " Reached Wuhan");
                 barrier.await();
             }catch (Exception e){}
        }
    }

    public static void main(String[] args) {
        CyclicBarrier barrier=new CyclicBarrier(3);
        ExecutorService service=Executors.newFixedThreadPool(3);
        service.submit(new Tour(barrier,"WalkTour",timeWalk));
        service.submit(new Tour(barrier,"SelfTour",timeSelf));
        service.submit(new Tour(barrier,"BusTour",timeBus));
        service.shutdown();
    }
}

class MyScheduledThread{
    public static void main(String[] args) {
        final ScheduledExecutorService executorService=Executors.newScheduledThreadPool(2);
        final Runnable beeper=new Runnable() {
            int count=0;
            @Override
            public void run() {
                System.out.println(new Date() + " beep " + (++count));
            }
        };
        final ScheduledFuture scheduledFuture=executorService.scheduleAtFixedRate(beeper,1,2,TimeUnit.SECONDS);
        final  ScheduledFuture scheduledFuture1=executorService.scheduleWithFixedDelay(beeper,2,5,TimeUnit.SECONDS);
        executorService.schedule(new Runnable() {
            @Override
            public void run() {
                scheduledFuture.cancel(true);
                scheduledFuture1.cancel(true);
                executorService.shutdown();
            }
        },30,TimeUnit.SECONDS);
    }
}