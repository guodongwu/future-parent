package com.future.study.dozer;

import java.util.Date;

/**
 * Created by wu on 2018/9/21.
 */
public class BeanB {
    private  long id;
    private  String value;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    private Date date;
}
