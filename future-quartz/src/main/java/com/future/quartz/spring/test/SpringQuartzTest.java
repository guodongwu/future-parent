package com.future.quartz.spring.test;

import com.future.quartz.spring.quartz.FirstJob;
import javafx.application.Application;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by wu on 2018/9/27.
 */
public class SpringQuartzTest {
    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("classpath:spring-quartz.xml");
        //Scheduler scheduler= (Scheduler) context.getBean("scheduler");
        Scheduler jdbcscheduler= (Scheduler) context.getBean("jdbcscheduler");
        try {
            Scheduler scheduler= StdSchedulerFactory.getDefaultScheduler();
            scheduler.start();
            boolean  hasJob= scheduler.checkExists(JobKey.jobKey("job1_1","jgroup1"));
            JobDetail jobDetail= scheduler.getJobDetail(JobKey.jobKey("job1_1","jgroup1"));
            if(hasJob==false) {
                 jobDetail = JobBuilder.newJob(FirstJob.class)
                        .withIdentity("job1_1", "jgroup1").build();
            }
            boolean  hasTrigger= scheduler.checkExists(TriggerKey.triggerKey("trigger1_1","tgroup1"));
            Trigger trigger=scheduler.getTrigger(TriggerKey.triggerKey("trigger1_1","tgroup1"));
            if(hasTrigger==false) {
                CronScheduleBuilder builder = CronScheduleBuilder.cronSchedule("0/2 * * * * ?");
                trigger = TriggerBuilder.newTrigger()
                        .withIdentity("trigger1_1", "tgroup1")
                        .startNow().withSchedule(builder)
                        .build();
            }
            if(!hasJob &&!hasTrigger){
                scheduler.scheduleJob(jobDetail,trigger);
            }

            scheduler.shutdown();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }

    }
}
