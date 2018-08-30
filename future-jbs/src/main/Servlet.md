1.Java Servlet  <br/>
CGI（Common Gateway Interface，公共网关接口）<br/>
但是相比于 CGI，Servlet 有以下几点优势：

        性能明显更好。
        Servlet 在 Web 服务器的地址空间内执行。这样它就没有必要再创建一个单独的进程来处理每个客户端请求。
        Servlet 是独立于平台的，因为它们是用 Java 编写的。
        服务器上的 Java 安全管理器执行了一系列限制，以保护服务器计算机上的资源。因此，Servlet 是可信的。
        Java 类库的全部功能对 Servlet 来说都是可用的。它可以通过 sockets 和 RMI 机制与 applets、数据库或其他软件进行交互。
2.Servlet 任务 <br/>   
    
    读取客户端（浏览器）发送的显式的数据：表单
    读取客户端（浏览器）发送的隐式的 HTTP 请求数据：cookie 媒体类型和浏览器能理解的压缩格式
    处理数据并生成结果。 访问数据库
    发送显式的数据（即文档）到客户端（浏览器）
    发送隐式的 HTTP 响应到客户端（浏览器）。这包括告诉浏览器或其他客户端被返回的文档类型（例如 HTML），设置 cookies 和缓存参数，以及其他类似的任务
3.javax.servlet 和 javax.servlet.http

4.    