package com.future.quartz.jdbc;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * Created by wu on 2018/9/25.
 */

@Slf4j
public class JDBCJob implements Job{

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {

        log.info("呵呵");
    }
}
