package com.future.backend.mapper;

import com.future.backend.entity.BaseType;

public interface BaseTypeMapper {
    int deleteByPrimaryKey(String typeId);

    int insert(BaseType record);

    int insertSelective(BaseType record);

    BaseType selectByPrimaryKey(String typeId);

    int updateByPrimaryKeySelective(BaseType record);

    int updateByPrimaryKey(BaseType record);
}