package com.future.mapper;

import com.future.pojo.BaseUserRole;

public interface BaseUserRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BaseUserRole record);

    int insertSelective(BaseUserRole record);

    BaseUserRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaseUserRole record);

    int updateByPrimaryKey(BaseUserRole record);
}