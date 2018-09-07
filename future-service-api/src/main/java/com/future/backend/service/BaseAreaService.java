package com.future.backend.service;

import com.future.backend.entity.BaseArea;
import com.github.pagehelper.PageInfo;

/**
 * Created by wu on 2018/8/20.
 */
public interface BaseAreaService {
    public PageInfo<BaseArea> getAllByParentId(int parentId, int pageNum, int pageSize) ;
    public BaseArea getBaseArea(int id);
}
