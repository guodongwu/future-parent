package com.study.servlet.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by wu on 2018/9/4.
 */
public class MaxTag extends TagSupport {
    private int num1;
    private int num2;
    public void setNum1(int num1) {
        this.num1 = num1;
    }
    public void setNum2(int num2) {
        this.num2 = num2;
    }

    @Override
    public int doEndTag() throws JspException {
        JspWriter out=pageContext.getOut();
        try {
            out.println(num1>num2?num1:num2);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }
}
