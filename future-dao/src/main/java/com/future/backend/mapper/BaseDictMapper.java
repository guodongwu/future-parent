package com.future.backend.mapper;

import com.future.backend.entity.BaseDict;

public interface BaseDictMapper {
    int deleteByPrimaryKey(Integer dictId);

    int insert(BaseDict record);

    int insertSelective(BaseDict record);

    BaseDict selectByPrimaryKey(Integer dictId);

    int updateByPrimaryKeySelective(BaseDict record);

    int updateByPrimaryKey(BaseDict record);
}