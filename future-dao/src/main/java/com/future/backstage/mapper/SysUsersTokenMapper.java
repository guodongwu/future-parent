package com.future.backstage.mapper;

import com.future.backstage.entity.SysUsersToken;

public interface SysUsersTokenMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysUsersToken record);

    int insertSelective(SysUsersToken record);

    SysUsersToken selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysUsersToken record);

    int updateByPrimaryKey(SysUsersToken record);
}