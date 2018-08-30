package com.study.servlet.create;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

public class  ServletEx1 implements Servlet {
    //初始化 第一次创建 Servlet 时被调用
    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("初始化");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("呵呵");
        servletResponse.setContentType("text/html;charset=utf-8");
        PrintWriter printWriter=servletResponse.getWriter();
        printWriter.println("<h1>呵呵</h1>");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("销毁");
    }
}
