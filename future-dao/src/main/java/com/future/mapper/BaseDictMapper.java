package com.future.mapper;

import com.future.pojo.BaseDict;

public interface BaseDictMapper {
    int deleteByPrimaryKey(Integer dictId);

    int insert(BaseDict record);

    int insertSelective(BaseDict record);

    BaseDict selectByPrimaryKey(Integer dictId);

    int updateByPrimaryKeySelective(BaseDict record);

    int updateByPrimaryKey(BaseDict record);
}