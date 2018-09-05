package com.study.servlet.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by wu on 2018/9/5.
 */
public class SwitchTag extends TagSupport {
    private  boolean subTagExecuted;
    public  SwitchTag(){
        subTagExecuted=false;
    }

    @Override
    public int doStartTag() throws JspException {
        subTagExecuted=false;
        return  EVAL_BODY_INCLUDE;
    }
    public synchronized  boolean getPermission(){
        return !subTagExecuted;
    }
    public  synchronized void subTagSucceeded(){
        subTagExecuted=true;
    }
    public  void release(){
        subTagExecuted=false;
    }
}
