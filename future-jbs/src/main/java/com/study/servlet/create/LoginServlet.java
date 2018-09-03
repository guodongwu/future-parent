package com.study.servlet.create;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wu on 2018/9/3.
 */
public class LoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String name=req.getParameter("username");
        String password=req.getParameter("password");
        if(name!=null && password!=null && name.equals("admin") && password.equals("admin")){
            resp.sendRedirect("success.html");
        }else{
            resp.sendError(HttpServletResponse.SC_SERVICE_UNAVAILABLE,"用户名或密码错误");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
