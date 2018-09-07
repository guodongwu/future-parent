package com.future.backend.mapper;

import com.future.BaseMapper;
import com.future.backend.entity.BaseArea;

import java.util.List;

public interface BaseAreaMapper  extends BaseMapper<BaseArea,Integer> {
    public List<BaseArea> getAllByParentId(int parentId);
}