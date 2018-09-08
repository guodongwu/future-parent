package com.study.servlet.create;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Claims;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * Created by wu on 2018/9/8.
 */
public class ApiServlet  extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Claims claims= (Claims) req.getAttribute("claims");
        resp.setContentType("application/json;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();
        try {
            String role = req.getPathInfo().replace("/","");
            boolean result = ((List<String>) claims.get("roles")).contains(role);
            out.println(result);
        }catch (Exception e){
            System.out.println(e.getMessage());
            out.println(false);
        }
    }
}
