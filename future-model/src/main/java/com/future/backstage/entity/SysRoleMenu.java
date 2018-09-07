package com.future.backstage.entity;

import java.io.Serializable;

public class SysRoleMenu implements Serializable {
    private Integer id;

    private String roleid;

    private String menuitemid;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getMenuitemid() {
        return menuitemid;
    }

    public void setMenuitemid(String menuitemid) {
        this.menuitemid = menuitemid == null ? null : menuitemid.trim();
    }
}