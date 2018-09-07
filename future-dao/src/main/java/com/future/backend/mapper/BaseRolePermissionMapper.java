package com.future.backend.mapper;

import com.future.backend.entity.BaseRolePermission;

public interface BaseRolePermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BaseRolePermission record);

    int insertSelective(BaseRolePermission record);

    BaseRolePermission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaseRolePermission record);

    int updateByPrimaryKey(BaseRolePermission record);
}