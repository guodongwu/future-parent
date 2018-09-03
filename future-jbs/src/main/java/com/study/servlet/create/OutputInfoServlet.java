package com.study.servlet.create;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by wu on 2018/9/3.
 */
public class OutputInfoServlet  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();

        Enumeration headNames=req.getHeaderNames();
        out.println("<html><head><title>INFO PAGE</title>");
        out.println(" <link href=\"static/css/bootstrap.min.css\"  rel=\"stylesheet\"/>");
        out.println("</head><body>");
        out.println("<table class=\"table\"><tr><td>消息报头的名字</td><td>消息报头的值</td></tr>");
        while (headNames.hasMoreElements()){
            String name= (String) headNames.nextElement();
            String value=req.getHeader(name);
            out.println(String.format("<tr><td>%s</td><td>%s</td></tr>",name,value));

        }
        out.println("</table>");
        out.println("<ul class=\"list-group\">");
        out.println(String.format("<li class=\"list-group-item\">客户端IP:%s</li>",req.getRemoteAddr()));
        out.println(String.format("<li class=\"list-group-item\">客户端端口:%s</li>",req.getRemotePort()));
        out.println(String.format("<li class=\"list-group-item\">服务端IP:%s</li>",req.getLocalAddr()));
        out.println(String.format("<li class=\"list-group-item\">服务端端口:%s</li>",req.getLocalPort()));
        out.println("</ul>");
        out.println("</body></html>");

    }
}
