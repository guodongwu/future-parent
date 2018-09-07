package com.future.backstage.entity;

import java.io.Serializable;

public class SysDictionary implements Serializable {
    private Integer id;

    private String dkey;

    private String dvalue;

    private String dmemo;

    private Integer display;

    private Integer dorder;

    private Integer edits;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey == null ? null : dkey.trim();
    }

    public String getDvalue() {
        return dvalue;
    }

    public void setDvalue(String dvalue) {
        this.dvalue = dvalue == null ? null : dvalue.trim();
    }

    public String getDmemo() {
        return dmemo;
    }

    public void setDmemo(String dmemo) {
        this.dmemo = dmemo == null ? null : dmemo.trim();
    }

    public Integer getDisplay() {
        return display;
    }

    public void setDisplay(Integer display) {
        this.display = display;
    }

    public Integer getDorder() {
        return dorder;
    }

    public void setDorder(Integer dorder) {
        this.dorder = dorder;
    }

    public Integer getEdits() {
        return edits;
    }

    public void setEdits(Integer edits) {
        this.edits = edits;
    }
}