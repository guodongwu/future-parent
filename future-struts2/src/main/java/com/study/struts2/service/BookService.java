package com.study.struts2.service;

/**
 * Created by wu on 2018/9/6.
 */
public class BookService {
    private String[] books=new String[]{
        "Spring","Struts2","Java EE",
            "Ajax","SSM"
    };
    public String[] getBooks(){
        return books;
    }
}
