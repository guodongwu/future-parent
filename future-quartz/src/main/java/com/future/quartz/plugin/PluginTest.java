package com.future.quartz.plugin;

import com.sun.media.jfxmedia.logging.Logger;
import lombok.extern.slf4j.Slf4j;
import org.quartz.ScheduleBuilder;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerMetaData;
import org.quartz.impl.StdSchedulerFactory;

/**
 * Created by wu on 2018/9/27.
 */
@Slf4j
public class PluginTest {
    public static void main(String[] args) {
        PluginTest pluginTest=new PluginTest();
        pluginTest.run();
    }
    public  void run(){
        try {
            StdSchedulerFactory factory=new StdSchedulerFactory();
            Scheduler scheduler=factory.getScheduler();
            scheduler.start();
            Thread.sleep(30000);
            scheduler.shutdown();
            SchedulerMetaData metaData=scheduler.getMetaData();
            log.info(String.valueOf(metaData.getNumberOfJobsExecuted()));
        } catch (SchedulerException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
