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
        try {
            Driver driver= new com.mysql.jdbc.Driver();
            DriverManager.registerDriver(driver);
            Properties properties= new Properties();
            properties.put("user",USER_NAME);
            properties.put("password",PASSWORD);
            connection=driver.connect(DB_URL,properties);
            String sql="select * from base_user where user_id=1";
            statement=connection.createStatement();
            ResultSet rs=statement.executeQuery(sql);
            if(rs.next()){
                // 通过字段检索
                int id  = rs.getInt("user_id");
                String name = rs.getString("user_name");


                // 输出数据
                out.println("ID: " + id);
                out.println(", 站点名称: " + name);
                out.println("<br />");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
