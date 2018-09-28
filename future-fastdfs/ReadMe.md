FastDFS是一个开源的轻量级分布式文件系统，它对文件进行管理，功能包括：文件存储、文件同步、文件访问（文件上传、文件下载）等，解决了大容量存储和负载均衡的问题。特别适合以文件为载体的在线服务，如相册网站、视频网站等等。
###1.https://github.com/happyfish100/fastdfs
####1.libfastcommon
     1.安装libfastcommon依赖
     2.进入libfastcommon目录
     3.执行脚本：    
        ./make.sh
        ./make.sh install
####2.安装FastDFS        
        ./make.sh
        ./make.sh install
####修改配置文件
        在默认安装路径 /etc/fdfs 下，有三个示例配置文件：
        client.conf.sample
        storage.conf.sample
        tracker.conf.sample
        首先将这三个文件名中的sample去掉，改为：
        client.conf
        storage.conf
        tracker.conf
       
       tracker.conf: 
            base_path=/home/fastdfs/log
            http.server_port:9999(防止端口冲突)
       storage.conf:
            group_name: groupN
            store_path0=/home/fastdfs/storage0
            base_path=/home/fastdfs/log
            tracker_server=192.168.1.xxx:22122
            http.server_port=8888
        client.conf:
            base_path=/home/fastdfs/log
            tracker_server=192.168.1.xxx:22122
            http.tracker_server_port=9999
       
####启动服务 
        /usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf
        /usr/bin/fdfs_storaged /etc/fdfs/storage.conf
####测试
    /etc/fdfs/client.conf upload /home/software/qq.jpg
### java
    fastdfs-client-java.jar