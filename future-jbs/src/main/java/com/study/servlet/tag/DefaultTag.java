package com.study.servlet.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by wu on 2018/9/5.
 */
public class DefaultTag extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        Tag parent=getParent();
        if(!((SwitchTag)parent).getPermission()){
            return SKIP_BODY;
        }
        ((SwitchTag) parent).subTagSucceeded();
        return EVAL_BODY_INCLUDE;
    }
}
