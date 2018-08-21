package com.future.mapper;

import com.future.pojo.BaseArea;

import java.util.List;

public interface BaseAreaMapper  extends  BaseMapper<BaseArea,Integer>{
    public List<BaseArea> getAllByParentId(int parentId);
}