package com.future.quartz.ram;

import com.future.quartz.QuartzUtil;
import org.quartz.*;

import java.util.Date;

/**
 * Created by wu on 2018/9/25.
 */
public class RAMQuartzTest {

    public static void main(String[] args) {
        JobDataMap jobDataMap=new JobDataMap();
        jobDataMap.put("name","sb李毅");
        JobDetail detail= JobBuilder.newJob(RAMJob.class).withIdentity("ramJob","ramGroup")
                .usingJobData(jobDataMap)
                .build();
        long time=System.currentTimeMillis()+3*1000L;
        Date startTime=new Date(time);
        jobDataMap=new JobDataMap();
        jobDataMap.put("name","李毅大sb");
        Trigger trigger= TriggerBuilder.newTrigger().withIdentity("ramTrigger","ramGroup")
                .startAt(startTime)
                .withSchedule(CronScheduleBuilder.cronSchedule("0/2 * * * * ?"))
                .usingJobData(jobDataMap)
                .build();
        QuartzUtil.RunJob(detail,trigger);

    }
}
