package com.future.quartz.listener;

import lombok.extern.slf4j.Slf4j;
import org.quartz.*;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class SimpleSchedulerListener implements SchedulerListener {
    @Override
    public void jobScheduled(Trigger trigger) {
        String jobName = trigger.getDescription();
        log.info(jobName + " has been scheduled");
    }

    @Override
    public void jobUnscheduled(TriggerKey triggerKey) {
        if (triggerKey == null) {
            // triggerGroup is being unscheduled
            log.info(triggerKey.getName() + " is being unscheduled");
        } else {
            log.info(triggerKey.getGroup() + " is being unscheduled");
        }

    }

    @Override
    public void triggerFinalized(Trigger trigger) {
        String jobName = trigger.getDescription();
        log.info("Trigger is finished for " + jobName);

    }

    @Override
    public void triggerPaused(TriggerKey triggerKey) {
        if (triggerKey == null) {
            // triggerGroup is being unscheduled
            log.info(triggerKey.getName() + " is being paused");
        } else {
            log.info(triggerKey.getGroup() + " is being paused");
        }

    }

    @Override
    public void triggersPaused(String triggerGroup) {

    }

    @Override
    public void triggerResumed(TriggerKey triggerKey) {

    }

    @Override
    public void triggersResumed(String triggerGroup) {

    }

    @Override
    public void jobAdded(JobDetail jobDetail) {

    }

    @Override
    public void jobDeleted(JobKey jobKey) {

    }

    @Override
    public void jobPaused(JobKey jobKey) {

    }

    @Override
    public void jobsPaused(String jobGroup) {

    }

    @Override
    public void jobResumed(JobKey jobKey) {

    }

    @Override
    public void jobsResumed(String jobGroup) {

    }

    @Override
    public void schedulerError(String msg, SchedulerException cause) {

    }

    @Override
    public void schedulerInStandbyMode() {

    }

    @Override
    public void schedulerStarted() {

    }

    @Override
    public void schedulerStarting() {

    }

    @Override
    public void schedulerShutdown() {

    }

    @Override
    public void schedulerShuttingdown() {

    }

    @Override
    public void schedulingDataCleared() {

    }
}
