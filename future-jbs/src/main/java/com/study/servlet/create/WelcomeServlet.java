package com.study.servlet.create;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Closeable;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wu on 2018/9/3.
 */
public class WelcomeServlet extends HttpServlet  {
    private  String greeting;

    @Override
    public void init() throws ServletException {
        greeting=getInitParameter("greeting");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username=req.getParameter("username");
        String welcomeInfo=greeting+","+username;
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<html><head><title>");
        out.println("Welcome Page");
        out.println("</title></head>");
        out.println("<body>");
        out.println(welcomeInfo);
        out.println("</body></html>");
        out.close();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
