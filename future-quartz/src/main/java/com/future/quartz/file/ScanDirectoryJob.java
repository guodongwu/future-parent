package com.future.quartz.file;

import lombok.extern.slf4j.Slf4j;
import org.quartz.*;

import java.io.File;
import java.io.FileFilter;
import java.util.Date;

/**
 * Created by wu on 2018/9/26.
 */
@Slf4j
public class ScanDirectoryJob implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        JobDetail jobDetail=context.getJobDetail();
        String jobName=jobDetail.getKey().getName();
        log.info("jobName:"+jobName+" fired at "+new Date());
        JobDataMap dataMap=jobDetail.getJobDataMap();
        String dirName=dataMap.getString("SCAN_DIR");
        if(dirName==null){
            throw  new JobExecutionException("Directory not configured");
        }
        File dir=new File(dirName);
        if(!dir.exists()){
            throw new JobExecutionException("Invalid Dir"+dirName);
        }

        FileFilter filter=new FileExtensionFilter(".pdf");
        File[] files=dir.listFiles(filter);
        if(files==null || files.length==0){
            log.info("No pdf files found in"+dir);
            return;
        }
        int size=files.length;
        for(int i=0;i<size;i++){
            File file=files[i];
            File afile=file.getAbsoluteFile();
            long fileSize=file.length();
            String msg=afile+"-size:"+fileSize;
            log.info(msg);
        }

    }
}
