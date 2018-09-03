package com.study.servlet.config;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ITemplateResolver;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by wu on 2018/9/3.
 */
@WebListener
public class ThymeleafConfig implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        TemplateEngine engine=templateEngine(servletContextEvent.getServletContext());
        TemplateEngineUtil.storeTemplateEngine(servletContextEvent.getServletContext(),engine);
    }
    public  TemplateEngine templateEngine(ServletContext context){
        TemplateEngine engine=new TemplateEngine();
        engine.setTemplateResolver(templateResolver(context));
        return engine;
    }

    private ITemplateResolver templateResolver(ServletContext context){
        ServletContextTemplateResolver resolver=new ServletContextTemplateResolver(context);
        resolver.setPrefix("/WEB-INF/templates/");
        resolver.setCharacterEncoding("UTF-8");
        resolver.setTemplateMode(TemplateMode.HTML);
        return resolver;
    }
    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
