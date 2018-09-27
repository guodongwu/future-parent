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
            //scheduler.start();
            JobDetail jobDetail = JobBuilder.newJob(FirstJob.class)
                    .withIdentity("job1_1","jgroup1").build();
            CronScheduleBuilder builder=CronScheduleBuilder.cronSchedule("0/2 * * * * ?");
            Trigger trigger=TriggerBuilder.newTrigger()
                    .withIdentity("trigger1_1","tgroup1")
                    .startNow().withSchedule(builder)
                    .build();
            Scheduler scheduler= StdSchedulerFactory.getDefaultScheduler();
            scheduler.start();
            scheduler.scheduleJob(jobDetail,trigger);
            Thread.sleep(10000);
            scheduler.shutdown();
        } catch (SchedulerException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
