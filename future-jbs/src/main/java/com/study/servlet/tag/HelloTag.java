package com.study.servlet.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;

/**
 * Created by wu on 2018/9/4.
 */
public class HelloTag implements Tag {
    private  PageContext context;
    private  Tag parent;
    @Override
    public void setPageContext(PageContext pageContext) {
        this.context=pageContext;
    }

    @Override
    public void setParent(Tag tag) {
        this.parent=tag;
    }

    @Override
    public Tag getParent() {
        return parent;
    }

    @Override
    public int doStartTag() throws JspException {
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        JspWriter out=context.getOut();
        try {
            out.println("Fuck!你个龟孙!");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }

    @Override
    public void release() {

    }
}
