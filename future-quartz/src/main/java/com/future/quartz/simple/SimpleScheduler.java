package com.future.quartz.simple;

import com.future.quartz.file.ScanDirectoryJob;
import com.future.quartz.job.CheckForInterruptJob;
import com.future.quartz.listener.SimpleJobListener;
import com.future.quartz.listener.SimpleSchedulerListener;
import com.future.quartz.listener.SimpleTriggerListener;
import lombok.extern.slf4j.Slf4j;
import org.quartz.*;
import org.quartz.impl.DirectSchedulerFactory;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Date;
import java.util.Properties;

/**
 * Created by wu on 2018/9/26.
 */
@Slf4j
public class SimpleScheduler {
    public static void main(String[] args) throws SchedulerException {

        SimpleScheduler simple=new SimpleScheduler();
        simple.simpleListenerScheduler();

       /* SimpleScheduler simpleScheduler=new SimpleScheduler();
        Scheduler scheduler=simpleScheduler.createScheduler();
        scheduler.start();
        log.info("start");
        simpleScheduler.scheduleJob(scheduler,"ScanDirectory",ScanDirectoryJob.class
        ,"d:\\pdf\\",10);
        directRun();
        StdByProperties();*/


    }
    public    void StdByProperties() throws SchedulerException {
        StdSchedulerFactory factory=new StdSchedulerFactory();
        Properties props=new Properties();
        props.put(StdSchedulerFactory.PROP_THREAD_POOL_CLASS,"org.quartz.simpl.SimpleThreadPool");
        props.put("org.quartz.threadPool.threadCount","10");
        factory.initialize(props);
        Scheduler scheduler=factory.getScheduler();
        log.info("PropertiesStd started");
        scheduler.start();
    }

    /**
     * direct
     *
     */
    public  void directRun(){
        DirectSchedulerFactory factory=DirectSchedulerFactory.getInstance();
        try {
            factory.createVolatileScheduler(2);
            Scheduler scheduler=factory.getScheduler();
            log.info("abc....");
            scheduler.start();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }


    }

    /**
     *  simpleScheduler
     */
    private void startScheduler() {
        Scheduler scheduler=null;
       try {
           scheduler= StdSchedulerFactory.getDefaultScheduler();
           scheduler.start();
           log.info("Scheduler started at"+new Date());
       } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    public  Scheduler createScheduler() throws SchedulerException {
        return StdSchedulerFactory.getDefaultScheduler();
    }
    private  void scheduleJob(Scheduler scheduler, String scanDirectory, Class<ScanDirectoryJob> scanDirectoryJobClass, String s, int i) throws SchedulerException {

        JobDataMap dataMap=new JobDataMap();
        dataMap.put("SCAN_DIR","D:\\pdf\\");
        JobDetail jobDetail=JobBuilder.newJob(ScanDirectoryJob.class)
                .withIdentity("job","gp")
                .usingJobData(dataMap)
                .build();
        Trigger trigger=TriggerBuilder.newTrigger()
                .withSchedule(SimpleScheduleBuilder.repeatSecondlyForTotalCount(1))
                .startNow()
                .build();
        scheduler.scheduleJob(jobDetail,trigger);

    }

    private  void scheduleInterruptJob(){
        try {
            Scheduler scheduler=StdSchedulerFactory.getDefaultScheduler();
            scheduler.start();
            JobKey jobkey=new JobKey("job","g1");
            JobDetail detail= JobBuilder.newJob(CheckForInterruptJob.class)
                    .withIdentity(jobkey)
                    .build();

            Trigger trigger=TriggerBuilder.newTrigger()
                    .withSchedule(SimpleScheduleBuilder.repeatSecondlyForTotalCount(1))
                    .startNow()
                    .build();
            scheduler.scheduleJob(detail,trigger);

            scheduler.interrupt(jobkey);
            Thread.sleep(10000);
            scheduler.shutdown();
        } catch (SchedulerException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


    }

    private  void simpleListenerScheduler(){
        try {
            Scheduler scheduler=StdSchedulerFactory.getDefaultScheduler();
            JobDetail detail=JobBuilder.newJob(CheckForInterruptJob.class).withDescription("hehehe")
                    .withIdentity("lister",Scheduler.DEFAULT_GROUP).build();
            CronTrigger trigger=TriggerBuilder.newTrigger().withIdentity("cronTrigger").withDescription("lala")
                    .withSchedule(CronScheduleBuilder.cronSchedule("0 22 14 * * ?")).build();
            scheduler.scheduleJob(detail,trigger);
            JobListener listener=new SimpleJobListener();
            TriggerListener tlistener=new SimpleTriggerListener();
            SchedulerListener slistener=new SimpleSchedulerListener();
            scheduler.getListenerManager().addJobListener(listener);
            scheduler.getListenerManager().addTriggerListener(tlistener);
            scheduler.getListenerManager().addSchedulerListener(slistener);
            scheduler.start();

        } catch (SchedulerException e) {
            e.printStackTrace();
        }

    }
}
