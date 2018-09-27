package com.future.quartz.plugin;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Date;
import java.util.Set;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class SimpleJob implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        log.info(context.getJobDetail().getKey()+"..."+new Date()+"...."+context.getTrigger().getKey());
        if(context.getMergedJobDataMap().size()>0){
            Set<String> keys=context.getMergedJobDataMap().keySet();
            for (String key:keys){
                String value=context.getMergedJobDataMap().getString(key);
                log.info("JobDataMap entry:"+key+"="+value);
            }
            context.setResult("呵呵");
        }
    }
}
