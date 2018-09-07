package com.future.backstage.mapper;

import com.future.backstage.entity.SysUsersLoginLog;

public interface SysUsersLoginLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysUsersLoginLog record);

    int insertSelective(SysUsersLoginLog record);

    SysUsersLoginLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysUsersLoginLog record);

    int updateByPrimaryKey(SysUsersLoginLog record);
}