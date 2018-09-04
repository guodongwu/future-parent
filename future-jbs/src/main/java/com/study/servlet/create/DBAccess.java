package com.study.servlet.create;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.sql.*;
import java.util.Properties;

/**
 * Created by wu on 2018/8/31.
 */
public class DBAccess extends HttpServlet {
    static  final  String JBCD_Driver="com.mysql.jdbc.Driver";
    static  final  String DB_URL="jdbc:mysql://localhost:3306/talents";
    static  final  String USER_NAME="root";
    static  final  String PASSWORD="root";
    public  DBAccess(){}


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();
        Connection connection=null;
        Statement statement=null;
        ResultSet rs=null;
        try {
            Driver driver= new com.mysql.jdbc.Driver();
            DriverManager.registerDriver(driver);
            Properties properties= new Properties();
            properties.put("user",USER_NAME);
            properties.put("password",PASSWORD);
            connection=driver.connect(DB_URL,properties);

            DatabaseMetaData dbMeta=connection.getMetaData();
            rs=dbMeta.getTables(null,null,null,new String[]{"TABLE"});
            out.println("<html><head><title>INFO PAGE</title>");
            out.println(" <link href=\"static/css/bootstrap.min.css\"  rel=\"stylesheet\"/>");
            out.println("</head><body>");
            out.println("<h3>数据库表</h3>");
            out.println("<ul  class=\"list-group\">");
            while (rs.next()){
                out.println(String.format("<li class=\"list-group-item\">%s</li>",rs.getString("TABLE_NAME")));
            }
            out.println("</ul>");
            statement=connection.createStatement();
            rs=statement.executeQuery("SELECT * from base_user");
            ResultSetMetaData resultSetMetaData=rs.getMetaData();
            int columnCount=resultSetMetaData.getColumnCount();
            out.println("<table class=\"table\">");
            out.println("<h3>Base_User表结构</h3>");
            out.println("<tr><th>字段名</th><th>字段类型</th><th>最大字符宽度</th></tr>");
            for (int i=1;i<=columnCount;i++){
                out.println("<tr>");
                String columnName=resultSetMetaData.getColumnName(i);
                out.println("<td>"+columnName+"</td>");
                String columnType=resultSetMetaData.getColumnTypeName(i);
                out.println("<td>"+columnType+"</td>");
                int columnLen=resultSetMetaData.getColumnDisplaySize(i);
                out.println("<td>"+columnLen+"</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<table class=\"table\">");
            out.println("<h3>Base_User数据</h3>");
            out.println("<tr>");
            for (int i=1;i<=columnCount;i++){
                out.println("<th>"+resultSetMetaData.getColumnName(i)+"</th>");
            }
            out.println("</tr>");
            while (rs.next()){
                out.println("<tr>");
                for(int i=1;i<=columnCount;i++){
                    out.println("<td>"+rs.getString(i)+"</td>");
                }
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                rs.close();
                statement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
