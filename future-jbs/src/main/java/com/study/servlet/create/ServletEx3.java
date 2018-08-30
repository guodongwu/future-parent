package com.study.servlet.create;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;


public class ServletEx3 extends HttpServlet {
    public  ServletEx3(){}



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("哈哈");
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        //resp.sendError(403,"abc");
        resp.addIntHeader("Refresh",5);
        Calendar calendar=Calendar.getInstance();
        Date taskTime=calendar.getTime();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowTime=sdf.format(taskTime);
        PrintWriter out = resp.getWriter();
        out.println(nowTime);
        String title = "使用 GET 方法读取表单数据";
        // 处理中文
        String name =req.getParameter("name");
        String docType = "<!DOCTYPE html> \n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                "  <li><b>站点名</b>："
                + name + "\n" +
                "  <li><b>网址</b>："
                + req.getParameter("url") + "\n" +
                "<li><b>复选框</b></li>"+
                req.getParameter("java")+"\n"+
                req.getParameter("net")+"\n"+
                req.getParameter("python")+"\n"+
                "</ul>\n" +
                "<table><tr><td>参数名称</td><td>参数值</td></tr>");


        Enumeration params=req.getParameterNames();
        while (params.hasMoreElements()){
            String param= (String) params.nextElement();
            out.println("<tr><td>"+param+"</td>");
            String [] value=req.getParameterValues(param);
            if(value.length==1){ //单个值
                String pvalue=value[0];
                if(pvalue.length()==0)
                    out.println("<td><i>没有值</i></td>");
                else
                    out.println("<td>"+pvalue+"</td>");
            }else{
                out.println("<td><ul>");
                for (int i=0;i<value.length;i++){
                    out.println("<li>"+value[i]);
                }
            }
            out.println("</tr>");
        }
        out.println("</table>");
        out.println("<h3>Header Info</h3>");
        params=req.getHeaderNames();
        while (params.hasMoreElements()){
            String pName= (String) params.nextElement();
            out.println("<div>"+pName);
            String value=req.getHeader(pName);
            out.println(":"+value+"</div>");
        }

        out.println(" </body> ");
        out.println("</html>");
    }
}
