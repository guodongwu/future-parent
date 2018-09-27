package com.future.quartz.spring.quartz;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Date;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class FirstJob implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        log.info(context.getJobDetail().getKey()+"starting...."+new Date());
    }
}
