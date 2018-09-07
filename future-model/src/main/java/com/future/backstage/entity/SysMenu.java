package com.future.backstage.entity;

import java.io.Serializable;

public class SysMenu implements Serializable {
    private String id;

    private String name;

    private String parentid;

    private String level;

    private String but;

    private String leaf;

    private String lmage;

    private String toolimage;

    private String navigationimage;

    private String url;

    private Integer display;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but == null ? null : but.trim();
    }

    public String getLeaf() {
        return leaf;
    }

    public void setLeaf(String leaf) {
        this.leaf = leaf == null ? null : leaf.trim();
    }

    public String getLmage() {
        return lmage;
    }

    public void setLmage(String lmage) {
        this.lmage = lmage == null ? null : lmage.trim();
    }

    public String getToolimage() {
        return toolimage;
    }

    public void setToolimage(String toolimage) {
        this.toolimage = toolimage == null ? null : toolimage.trim();
    }

    public String getNavigationimage() {
        return navigationimage;
    }

    public void setNavigationimage(String navigationimage) {
        this.navigationimage = navigationimage == null ? null : navigationimage.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getDisplay() {
        return display;
    }

    public void setDisplay(Integer display) {
        this.display = display;
    }
}