package com.future.quartz.job;

import lombok.extern.slf4j.Slf4j;
import org.quartz.InterruptableJob;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.UnableToInterruptJobException;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class CheckForInterruptJob  implements InterruptableJob{
    private  boolean jobInterrupted=false;
    private  int counter=5;
    private  boolean jobFinished=false;
    @Override
    public void interrupt() throws UnableToInterruptJobException {
            jobInterrupted=true;
    }

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        while (!jobInterrupted && !jobFinished){
            log.info("processing");
            counter--;
            if(counter<=0){
                jobFinished=true;
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if(jobFinished){
            log.info("job finished without interrupt");
        }
        if(jobInterrupted){
            log.info("job was interrupted");
        }
    }
}
