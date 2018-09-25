package com.future.quartz;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;

/**
 * Created by wu on 2018/9/25.
 */
public class QuartzUtil {
    private static Logger logger= LoggerFactory.getLogger(QuartzUtil.class);
    private  static Scheduler scheduler=null;
    static {
        scheduler=getScheduler();
    }
    private static Scheduler getScheduler(){
        SchedulerFactory schedulerFactory = new StdSchedulerFactory();
        Scheduler scheduler = null;
        try {
            scheduler = schedulerFactory.getScheduler();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }

        return scheduler;

    }

    public  static  void RunJob(JobDetail detail, Trigger trigger){
        Scheduler scheduler=getScheduler();
        try {
            scheduler.scheduleJob(detail,trigger);
            scheduler.start();
            logger.info("start:"+new Date());
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    public static  void shutdown(){
        try {
            if(scheduler!=null) {
                scheduler.shutdown();
            }
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }
}
