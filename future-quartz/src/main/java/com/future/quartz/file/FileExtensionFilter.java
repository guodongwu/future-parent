package com.future.quartz.file;

import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;

/**
 * Created by wu on 2018/9/26.
 */
public class FileExtensionFilter implements FileFilter {

    private  String extension;
    public  FileExtensionFilter(String extension){
        this.extension=extension;
    }
    @Override
    public boolean accept(File file) {
        String lCaseFileName= file.getName().toLowerCase();
        return (file.isFile() && (lCaseFileName.indexOf(extension)>0))?true:false;
    }
}
