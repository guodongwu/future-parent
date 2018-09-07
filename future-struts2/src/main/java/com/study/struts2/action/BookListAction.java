package com.study.struts2.action;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.study.struts2.service.BookService;

/**
 * Created by wu on 2018/9/6.
 */
public class BookListAction extends ActionSupport {
    public String[] getBooks() {
        return books;
    }

    public void setBooks(String[] books) {
        this.books = books;
    }

    private String[] books;

    @Override
    public String execute() throws Exception {
        String user= (String) ActionContext.getContext().getSession().get("user");
        if(user!=null && user.equals("admin")){
            BookService bs=new BookService();
            setBooks(bs.getBooks());
            return SUCCESS;
        }else
            return LOGIN;
    }
}
