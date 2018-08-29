package com.future.study.servlet;

import com.future.utils.HttpClientUtil;
import com.google.gson.annotations.SerializedName;
import org.apache.http.client.HttpClient;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by wu on 2018/8/29.
 */
public class ApiServlet extends HttpServlet {

    final String URL="https://www.apiopen.top/satinGodApi";
    private int type;
    private  int page;
    public  ApiServlet(int type,int page){
        this.type=type;
        this.page=page;

    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page= req.getParameter("page");
        String type=req.getParameter("type");
        if(page==null || page==""){
            page="1";
        }
        if(type==null || type==""){
            type="1";
        }
        String url=URL+"?type="+type+"&page="+page;
        String json= HttpClientUtil.Get(url);
        System.out.println(json);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
