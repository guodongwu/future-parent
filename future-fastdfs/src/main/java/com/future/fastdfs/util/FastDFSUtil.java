package com.future.fastdfs.util;

import com.sun.deploy.util.SessionState;
import org.apache.commons.io.FileUtils;
import org.csource.common.MyException;
import org.csource.fastdfs.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * Created by wu on 2018/9/29.
 */
public class FastDFSUtil {
    private  static Logger logger= LoggerFactory.getLogger(FastDFSUtil.class);
    private  final  static  String FASTDFS_CONFIG="fastdfs.properties";
    private TrackerClient trackerClient=null;
    private TrackerServer trackerServer=null;
    private StorageClient storageClient=null;
    public  FastDFSUtil(){
        try {
            ClientGlobal.init(FASTDFS_CONFIG);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }
        logger.info("ClientGlobal.configInfo():" + ClientGlobal.configInfo());
    }
    private  StorageClient getStorageClient(){
        try {
            if(trackerClient==null){
                trackerClient=new TrackerClient(ClientGlobal.g_tracker_group);
            }
            if(trackerServer==null){
                trackerServer=trackerClient.getConnection();
            }
            StorageServer storageServer=trackerClient.getStoreStorage(trackerServer);
            if(storageServer==null){
                throw  new IllegalStateException("getStoreStorage return null");
            }
            if(storageClient==null){
                storageClient=new StorageClient(trackerServer,storageServer);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return  storageClient;
    }

    synchronized  public  String upload(MultipartFile file){
        StorageClient storageClient=getStorageClient();
        String extName= getFileType(file.getOriginalFilename());
        String r[]=null;
        try {
             r=storageClient.upload_file(file.getBytes(),extName,null);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }
        if(r!=null){
            return r[0]+"/"+r[1];
        }
        else{
            return null;
        }
    }

    private String getFileType(String originalFilename) {
        int index=originalFilename.lastIndexOf(".");
        String ext=originalFilename.substring(index+1);
        return ext;
    }

    synchronized public  byte[] download(String fullPath)
    {
        StorageClient storageClient=getStorageClient();
        PathInfo storePath=parseFromUrl(fullPath);
        byte[] buffer=null;
        try {
            buffer=storageClient.download_file(storePath.getGroupName(),storePath.getPath());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }
        return buffer;
    }

    private PathInfo parseFromUrl(String fullPath) {
        int pos=fullPath.indexOf("group");
        String groupAndPath=fullPath.substring(pos);
        pos=groupAndPath.indexOf("/");
        String group=groupAndPath.substring(0,pos);
        String path=groupAndPath.substring(pos+1);
        PathInfo r=new PathInfo(group,path);
        return r;
    }
}
class PathInfo{
    private String groupName;
    private String path;
    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public  PathInfo(String groupName,String path){
        this.groupName=groupName;
        this.path=path;
    }

}
