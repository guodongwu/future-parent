#1.Java Servlet
###CGI（Common Gateway Interface，公共网关接口）<br/>
但是相比于 CGI，Servlet 有以下几点优势：

        性能明显更好。
        Servlet 在 Web 服务器的地址空间内执行。这样它就没有必要再创建一个单独的进程来处理每个客户端请求。
        Servlet 是独立于平台的，因为它们是用 Java 编写的。
        服务器上的 Java 安全管理器执行了一系列限制，以保护服务器计算机上的资源。因此，Servlet 是可信的。
        Java 类库的全部功能对 Servlet 来说都是可用的。它可以通过 sockets 和 RMI 机制与 applets、数据库或其他软件进行交互。
#2.Servlet 任务 <br/>   
    
    读取客户端（浏览器）发送的显式的数据：表单
    读取客户端（浏览器）发送的隐式的 HTTP 请求数据：cookie 媒体类型和浏览器能理解的压缩格式
    处理数据并生成结果。 访问数据库
    发送显式的数据（即文档）到客户端（浏览器）
    发送隐式的 HTTP 响应到客户端（浏览器）。这包括告诉浏览器或其他客户端被返回的文档类型（例如 HTML），设置 cookies 和缓存参数，以及其他类似的任务

#3.dispatcher： 

      REQUEST：当用户直接访问页面时，Web容器将会调用过滤器。如果目标资源是通过RequestDispatcher的include()或forward()方法访问时，那么该过滤器就不会被调用。
      INCLUDE：如果目标资源是通过RequestDispatcher的include()方法访问时，那么该过滤器将被调用。除此之外，该过滤器不会被调用。
      FORWARD：如果目标资源是通过RequestDispatcher的forward()方法访问时，那么该过滤器将被调用，除此之外，该过滤器不会被调用。
      ERROR：如果目标资源是通过声明式异常处理机制调用时，那么该过滤器将被调用。除此之外，过滤器不会被调用。&ndash;&gt;
      
#4 Servlet 生命周期
##1）加载和实例化
      Servlet容器负责加载和实例化
      调用不代参的构造方法
##2）初始化
      init()只调用一次 
      因此最好抛出异常以便查看是否可以使用
##3）请求处理
      service()---->异常---->destory()
##4） 服务终止
      destory()--->GC
#5 ServletContext
        共享信息setAttribute()