package com.future.backend.mapper;

import com.future.backend.entity.BaseRole;

public interface BaseRoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(BaseRole record);

    int insertSelective(BaseRole record);

    BaseRole selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(BaseRole record);

    int updateByPrimaryKey(BaseRole record);
}