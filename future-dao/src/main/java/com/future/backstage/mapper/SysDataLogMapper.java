package com.future.backstage.mapper;

import com.future.backstage.entity.SysDataLog;

public interface SysDataLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysDataLog record);

    int insertSelective(SysDataLog record);

    SysDataLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysDataLog record);

    int updateByPrimaryKeyWithBLOBs(SysDataLog record);

    int updateByPrimaryKey(SysDataLog record);
}