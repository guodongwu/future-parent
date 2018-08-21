package com.future.service;

import com.future.pojo.BaseArea;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * Created by wu on 2018/8/20.
 */
public interface BaseAreaService {
    public PageInfo<BaseArea> getAllByParentId(int parentId, int pageNum, int pageSize) ;
    public BaseArea getBaseArea(int id);
}
