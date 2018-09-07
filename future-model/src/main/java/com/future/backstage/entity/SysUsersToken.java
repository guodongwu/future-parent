package com.future.backstage.entity;

import java.io.Serializable;
import java.util.Date;

public class SysUsersToken implements Serializable {
    private Integer id;

    private Integer userid;

    private String token;

    private String md5token;

    private Date logintime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token == null ? null : token.trim();
    }

    public String getMd5token() {
        return md5token;
    }

    public void setMd5token(String md5token) {
        this.md5token = md5token == null ? null : md5token.trim();
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }
}