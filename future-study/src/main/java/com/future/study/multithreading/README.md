<div><span>线程</span><br/>
    <img src="https://images0.cnblogs.com/i/426802/201406/232002051747387.jpg"/>
    Java线程具有五中基本状态:<br/>
        新建狀態（new）<br/>
        就緒狀態（runnable）<br/>
        運行狀態（running）<br/>
        阻塞狀態（blocked）<br/>
        死亡狀態(Dead)<br/>
        
       Executor                  ：具体Runnable任务的执行者。
       ExecutorService           ：一个线程池管理者，其实现类有多种，我会介绍一部分。我们能把Runnable,Callable提交到池中让其调度。
       Semaphore                 ：一个计数信号量
       ReentrantLock             ：一个可重入的互斥锁定 Lock，功能类似synchronized，但要强大的多。
       Future                    ：是与Runnable,Callable进行交互的接口，比如一个线程执行结束后取返回的结果等等，还提供了cancel终止线程。
       BlockingQueue             ：阻塞队列。
       CompletionService         : ExecutorService的扩展，可以获得线程执行结果的
       CountDownLatch            ：一个同步辅助类，在完成一组正在其他线程中执行的操作之前，它允许一个或多个线程一直等待。 
       CyclicBarrier             ：一个同步辅助类，它允许一组线程互相等待，直到到达某个公共屏障点 
       Future                    ：Future 表示异步计算的结果。
       ScheduledExecutorService ：一个 ExecutorService，可安排在给定的延迟后运行或定期执行的命令。

       Executors主要方法说明:
            newFixedThreadPool（固定大小线程池）
            newCachedThreadPool（无界线程池，可以进行自动线程回收）
            execute 将重用以前构造的线程（如果线程可用）
            newSingleThreadExecutor（单个后台线程）
            Semaphore 一个计数信号量
            BlockingQueue 
            CompletionService
            CountDownLatch
            CyclicBarrier
            ScheduledExecutorService
</div>
