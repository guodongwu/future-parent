package com.study.servlet.tag;

import com.study.servlet.create.CounterServlet;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;

/**
 * Created by wu on 2018/9/5.
 */
public class GreetTag extends BodyTagSupport {
    private  int count;

    @Override
    public int doEndTag() throws JspException {
        JspWriter out=bodyContent.getEnclosingWriter();
        try {
            out.println(bodyContent.getString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }

    @Override
    public int doStartTag() throws JspException {
        count=0;
        return EVAL_BODY_BUFFERED;
    }

    @Override
    public int doAfterBody() throws JspException {
        if(count<2){
            count++;
            return EVAL_BODY_AGAIN;
        }else {
            return SKIP_BODY;
        }
    }
}
