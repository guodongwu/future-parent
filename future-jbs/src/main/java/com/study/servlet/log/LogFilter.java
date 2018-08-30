package com.study.servlet.log;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wu on 2018/8/30.
 */
public class LogFilter implements Filter {
    public void destroy() {
    }

    //每次刷新调用
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("abcdefg");
        //获取请求信息(测试时可以通过get方式在URL中添加name)
        //http://localhost:8080/servlet_demo/helloword?name=123
        String name = req.getParameter("name");

        // 过滤器核心代码逻辑
        System.out.println("过滤器获取请求参数:"+name);
        System.out.println("第二个过滤器执行--网站名称：www.runoob.com");

        if("123".equals(name)){
            // 把请求传回过滤链
            chain.doFilter(req, resp);
        }else{
            //设置返回内容类型
            resp.setContentType("text/html;charset=utf-8");

            //在页面输出响应信息
            PrintWriter out = resp.getWriter();
            out.print("<b>name不正确，请求被拦截，不能访问web资源</b>");
            System.out.println("name不正确，请求被拦截，不能访问web资源");
        }
        //chain.doFilter(req, resp);

    }

    public void init(FilterConfig config) throws ServletException {
        String site=config.getInitParameter("site");
        System.out.println(site);
    }

}
