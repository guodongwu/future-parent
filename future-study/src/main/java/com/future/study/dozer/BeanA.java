package com.future.study.dozer;

import org.dozer.Mapping;

import java.util.Date;

/**
 * Created by wu on 2018/9/21.
 */
public class BeanA {
    private long id;
    @Mapping("value")
    private String name;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    private Date date;
}
