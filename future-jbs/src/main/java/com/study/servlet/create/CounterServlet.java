package com.study.servlet.create;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wu on 2018/9/4.
 */
public class CounterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context=getServletContext();
        Integer count=null;
        synchronized (context){
            count= (Integer) context.getAttribute("counter");
            if(null==count){
                count=new Integer(0);
            }else
                count=new Integer(count.intValue()+1);
            context.setAttribute("counter",count);
        }
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();
        out.println("<html><head><title>INFO PAGE</title>");
        out.println(" <link href=\"static/css/bootstrap.min.css\"  rel=\"stylesheet\"/>");
        out.println("</head><body>");
        out.println("<ul class=\"list-group\">");
        out.println(String.format("<li class=\"list-group-item\">頁面訪問次數:%s</li>",count));
        out.println("</ul>");
        out.println("</body></html>");
        out.close();
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
