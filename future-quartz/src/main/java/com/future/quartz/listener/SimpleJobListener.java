package com.future.quartz.listener;

import lombok.extern.slf4j.Slf4j;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.JobListener;

import javax.print.attribute.standard.JobName;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class SimpleJobListener implements JobListener {
    @Override
    public String getName() {
        return getClass().getSimpleName();
    }

    @Override
    public void jobToBeExecuted(JobExecutionContext context) {
        log.info(context.getJobDetail().getDescription()+"is be Executed");
    }

    @Override
    public void jobExecutionVetoed(JobExecutionContext context) {
        log.info(context.getJobDetail().getDescription()+"is be ExecutionVetoed");
    }

    @Override
    public void jobWasExecuted(JobExecutionContext context, JobExecutionException jobException) {
        log.info(context.getJobDetail().getDescription()+"WasExecuted");
    }
}
