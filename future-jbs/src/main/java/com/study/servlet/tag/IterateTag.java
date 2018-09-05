package com.study.servlet.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.Collection;
import java.util.Iterator;

/**
 * Created by wu on 2018/9/5.
 */
public class IterateTag extends TagSupport{
    private Iterator items;
    private String itemId;
    private  Object item;
    public  IterateTag(){
        items=null;
    }
    public  void release(){
        items=null;
    }
    public void setItems(Collection cl){
        if(cl.size()>0){
            items=cl.iterator();
        }
    }
    public void setVar(String var){
        itemId=var;
    }

    @Override
    public int doStartTag() throws JspException {
        if(items.hasNext()){
            item=items.next();

        }else{
            return SKIP_BODY;
        }
        putVariable();
        return  EVAL_BODY_INCLUDE;
    }

    @Override
    public int doAfterBody() throws JspException {
        if(items.hasNext()){
            item=items.next();
        }else{
            return  SKIP_BODY;
        }
        putVariable();
        return EVAL_BODY_AGAIN;
    }
    public void putVariable(){
        if(null==item){
            pageContext.removeAttribute(itemId, PageContext.PAGE_SCOPE);
        }else{
            pageContext.setAttribute(itemId,item);
        }
    }
}
