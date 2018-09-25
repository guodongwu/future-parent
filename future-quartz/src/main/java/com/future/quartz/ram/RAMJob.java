package com.future.quartz.ram;

import org.quartz.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by wu on 2018/9/25.
 */
public class RAMJob implements Job {
    private  static Logger logger= LoggerFactory.getLogger(RAMJob.class);
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        JobDetail detail=context.getJobDetail();
        String jobdetail=detail.getJobDataMap().getString("name");
        JobDataMap jobDataMap= context.getTrigger().getJobDataMap();
        String trigger=jobDataMap.getString("name");
        logger.info("jobDetail:"+jobdetail+",Trigger:"+trigger);
    }
}
