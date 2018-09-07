package com.future.backstage.mapper;

import com.future.backstage.entity.SysUsersControlLog;

public interface SysUsersControlLogMapper {
    int insert(SysUsersControlLog record);

    int insertSelective(SysUsersControlLog record);
}