package com.future.mapper;

import com.future.pojo.BaseType;

public interface BaseTypeMapper {
    int deleteByPrimaryKey(String typeId);

    int insert(BaseType record);

    int insertSelective(BaseType record);

    BaseType selectByPrimaryKey(String typeId);

    int updateByPrimaryKeySelective(BaseType record);

    int updateByPrimaryKey(BaseType record);
}