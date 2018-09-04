package com.study.servlet.create;

import com.study.servlet.utils.DbHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by wu on 2018/9/4.
 */
public class ListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection connection= DbHelper.getConnection();
        Statement statement=null;
        ResultSet rs=null;
        req.setCharacterEncoding("utf-8");
        String condtion=req.getParameter("cond");
        if(null==condtion || "".equals(condtion)){
            resp.sendRedirect("search.html");
            return;
        }
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();
        try {
            statement=connection.createStatement();
            if(condtion.equals("all")){
                rs=statement.executeQuery("select * from base_user");
                printUserInfo(out,rs);
                out.close();
            }else if(condtion.equals("precision")){
                String username=req.getParameter("username");
                String phone=req.getParameter("phone");
                if((null==username || "".equals(username)) &&(null==phone || "".equals(phone))){
                    resp.sendRedirect("search.html");
                    return;
                }
                StringBuffer sb=new StringBuffer("select * from base_user where");
                boolean bFlag=false;
                if(!username.equals("")){
                    sb.append(" username='"+username+"'");
                    bFlag=true;
                }
                if(!phone.equals("")){
                    if(bFlag){
                        sb.append(" and phone='"+phone+"'");
                    }else{
                        sb.append(" phone='"+phone+"'");
                    }
                }
                rs=statement.executeQuery(sb.toString());
                printUserInfo(out,rs);
                out.close();
            }else if(condtion.equals("keyword")){
                String keyword=req.getParameter("keyword");
                if (null == keyword || "".equals(keyword)) {
                    resp.sendRedirect("search.html");
                    return;
                }
                String sql="select * from base_user where user_name like '%"+keyword+"%'";
                rs=statement.executeQuery(sql);
                printUserInfo(out,rs);
                out.close();
            }else{
                resp.sendRedirect("search.html");
                return;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if(rs!=null){
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(statement!=null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(connection!=null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

    }
    public void printUserInfo(PrintWriter  out,ResultSet rs){
        out.println("<html><head><title>INFO PAGE</title>");
        out.println(" <link href=\"static/css/bootstrap.min.css\"  rel=\"stylesheet\"/>");
        out.println("</head><body>");
        out.println("<ul class=\"list-group\">");
        try {
            while (rs.next()){
                out.println(String.format("<li class=\"list-group-item\">用户名:%s 电话%s</li>",rs.getString("user_name"),rs.getString("phone")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        out.println("</ul>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
