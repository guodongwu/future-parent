package com.future.mapper;

import com.future.pojo.BasePermission;

public interface BasePermissionMapper {
    int deleteByPrimaryKey(Integer permissionId);

    int insert(BasePermission record);

    int insertSelective(BasePermission record);

    BasePermission selectByPrimaryKey(Integer permissionId);

    int updateByPrimaryKeySelective(BasePermission record);

    int updateByPrimaryKey(BasePermission record);
}