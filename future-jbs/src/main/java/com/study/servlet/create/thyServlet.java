package com.study.servlet.create;

import com.study.servlet.config.TemplateEngineUtil;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wu on 2018/9/3.
 */
@WebServlet("/thy")
public class thyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine engine= TemplateEngineUtil.getTemplateEngine(req.getSession().getServletContext());
        WebContext context=new WebContext(req,resp,req.getSession().getServletContext());
        resp.setCharacterEncoding("UTF-8");
        context.setVariable("recipient","哈哈哈");
        engine.process("index.html",context,resp.getWriter());
    }
}
