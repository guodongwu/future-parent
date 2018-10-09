import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;
import org.csource.common.MyException;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.*;
import org.junit.Before;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.UUID;

/**
 * Created by wu on 2018/9/28.
 */
@SuppressWarnings("unchecked")
@Slf4j
public class TestFastDfs {
    public String  local="D:\\1.png";
    public  String name="/fastdfs-client.properties";
    public Properties properties=null;
    @Before
    public void setUp(){
        InputStream inputStream=TestFastDfs.class.getResourceAsStream(name);
        properties=new Properties();
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Test
    public void testUpload(){
        try {
            ClientGlobal.initByProperties(properties);
            TrackerClient trackerClient=new TrackerClient();
            TrackerServer trackerServer=trackerClient.getConnection();
            StorageServer storageServer=null;
            StorageClient1 client1=new StorageClient1(trackerServer,storageServer);
            StorageClient client=new StorageClient(trackerServer,storageServer);
            NameValuePair nvp[]=new NameValuePair[]{
                    new NameValuePair("age","18"),
                    new NameValuePair("sex","male")
            };
            String fileIds[]=client.upload_file(local,"png",nvp);
            log.info(String.valueOf(fileIds.length));
            log.info("组名:"+fileIds[0]);
            log.info("路径:"+fileIds[1]);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void testDownload(){
        try {
            ClientGlobal.initByProperties(properties);
            TrackerClient trackerClient=new TrackerClient();
            TrackerServer trackerServer=trackerClient.getConnection();
            StorageServer storageServer=null;
            StorageClient storageClient=new StorageClient(trackerServer,storageServer);
            byte[] b=storageClient.download_file("group1","M00/00/00/wKiaglut6JuAcDV2AAA0IaAUsLw793.png");
            log.info(String.valueOf(b));
            IOUtils.write(b,new FileOutputStream("D:\\"+ UUID.randomUUID().toString()+".png"));


        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }

    }

    @Test
    public  void testGetFileMate(){
        try {
            ClientGlobal.initByProperties(properties);
            TrackerClient trackerClient=new TrackerClient();
            TrackerServer trackerServer=trackerClient.getConnection();
            StorageServer storageServer=null;
            StorageClient storageClient=new StorageClient(trackerServer,storageServer);
            NameValuePair nvps[]=storageClient.get_metadata("group1","M00/00/00/wKiaglut6JuAcDV2AAA0IaAUsLw793.png");
            for (NameValuePair nvp:nvps){
                log.info(nvp.getName()+":"+nvp.getValue());
            }

        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }

    }

    @Test
    public  void testDelete(){
        try {
            ClientGlobal.initByProperties(properties);
            TrackerClient trackerClient=new TrackerClient();
            TrackerServer trackerServer=trackerClient.getConnection();
            StorageServer storageServer=null;
            StorageClient storageClient=new StorageClient(trackerServer,storageServer);
            int i=storageClient.delete_file("group1","M00/00/00/wKiaglut3FiACE9GAACg_4awYNI116.jpg");
            log.info(i==0?"OK":"Fail"+i);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }

    }
}
