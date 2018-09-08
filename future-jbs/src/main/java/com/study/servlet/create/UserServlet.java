package com.study.servlet.create;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.faces.event.WebsocketEvent;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by wu on 2018/9/8.
 */
public class UserServlet extends HttpServlet {
    private Map<String,List<String>> useDb=new HashMap<>();
    private static  class UserLogin{
        public  String name;
        public  String password;
    }
    public  UserServlet(){
        useDb.put("tom", Arrays.asList("user"));
        useDb.put("jelly",Arrays.asList("user","admin"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserLogin userLogin=new UserLogin();
        ObjectMapper objectMapper=new ObjectMapper();
        BufferedReader reader = req.getReader();
        String jsonStr = reader.readLine();
        System.out.println(jsonStr);
        reader.close();
        userLogin= objectMapper.readValue(jsonStr,UserLogin.class);
        if(userLogin.name!=null && useDb.containsKey(userLogin.name)){
            LoginReponse loginReponse= new LoginReponse(Jwts.builder().setSubject(userLogin.name).claim("roles",useDb.get(userLogin.name)).setIssuedAt(new Date())
            .signWith(SignatureAlgorithm.HS256,"meiyoumima").compact());

            String json= objectMapper.writeValueAsString(loginReponse);
            resp.setCharacterEncoding("utf-8");
            resp.setContentType("application/json;charset=utf-8");
            PrintWriter out=resp.getWriter();
            out.println(json);
        }
    }
    private  static  class  LoginReponse{
        public  String token;
        public LoginReponse(String token){
            this.token=token;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
