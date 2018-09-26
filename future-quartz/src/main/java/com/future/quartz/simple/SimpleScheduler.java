package com.future.quartz.simple;

import com.future.quartz.file.ScanDirectoryJob;
import lombok.extern.slf4j.Slf4j;
import org.quartz.*;
import org.quartz.impl.DirectSchedulerFactory;
import org.quartz.impl.JobDetailImpl;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Date;
import java.util.Properties;

/**
 * Created by wu on 2018/9/26.
 */
@Slf4j
public class SimpleScheduler {
    public static void main(String[] args) throws SchedulerException {
       /* SimpleScheduler simpleScheduler=new SimpleScheduler();
        Scheduler scheduler=simpleScheduler.createScheduler();
        scheduler.start();
        log.info("start");
        simpleScheduler.scheduleJob(scheduler,"ScanDirectory",ScanDirectoryJob.class
        ,"d:\\pdf\\",10);
        directRun();*/
        StdByProperties();
    }
    public  static  void StdByProperties() throws SchedulerException {
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
    public static void directRun(){
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
}
