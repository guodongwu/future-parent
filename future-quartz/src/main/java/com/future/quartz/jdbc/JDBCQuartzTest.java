package com.future.quartz.jdbc;

import com.future.quartz.QuartzUtil;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.util.List;

/**
 * Created by wu on 2018/9/25.
 */
public class JDBCQuartzTest {
    public static void main(String[] args) throws SchedulerException {
        run();
    }
    public static  void run() throws SchedulerException {

        JobKey jobKey=new JobKey("jdbcJob","group2");
        SchedulerFactory schedulerFactory=new StdSchedulerFactory();
        Scheduler scheduler= schedulerFactory.getScheduler();
        List<? extends  Trigger> triggers=scheduler.getTriggersOfJob(jobKey);
        if(triggers.size()>0){
            for (Trigger trigger:triggers){
                if((trigger instanceof  CronTrigger)||(trigger instanceof SimpleTrigger)){
                    scheduler.resumeJob(jobKey);
                }
            }
            scheduler.start();
            return;
        }
        JobDetail detail= JobBuilder.newJob(JDBCJob.class)
                .withIdentity("jdbcJob","group2").storeDurably(true)
                .build();
        ScheduleBuilder builder=SimpleScheduleBuilder.repeatSecondlyForTotalCount(5);
        Trigger trigger= TriggerBuilder.newTrigger()
                .withIdentity("jdbctrigger","group2")
                .startNow().withSchedule(builder)
                .build();
        QuartzUtil.RunJob(detail,trigger);

        try {
            Thread.sleep(10000);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        QuartzUtil.shutdown();
    }
}
