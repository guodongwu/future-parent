package com.study.servlet.config;

import org.thymeleaf.TemplateEngine;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;

/**
 * Created by wu on 2018/9/3.
 */
@WebListener
public class TemplateEngineUtil {
    private  static  final  String TEMPLATE_ENGINE_ATTR="com.future.TemplateEngineInstance";
    public  static  void storeTemplateEngine(ServletContext context, TemplateEngine engine){
        context.setAttribute(TEMPLATE_ENGINE_ATTR,engine);
    }
    public static  TemplateEngine getTemplateEngine(ServletContext context){
        return (TemplateEngine) context.getAttribute(TEMPLATE_ENGINE_ATTR);
    }
}

