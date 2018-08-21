package com.future.mapper;

import com.future.pojo.BaseRole;

public interface BaseRoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(BaseRole record);

    int insertSelective(BaseRole record);

    BaseRole selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(BaseRole record);

    int updateByPrimaryKey(BaseRole record);
}