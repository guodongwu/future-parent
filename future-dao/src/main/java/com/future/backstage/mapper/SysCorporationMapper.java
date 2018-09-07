package com.future.backstage.mapper;

import com.future.backstage.entity.SysCorporation;

public interface SysCorporationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysCorporation record);

    int insertSelective(SysCorporation record);

    SysCorporation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysCorporation record);

    int updateByPrimaryKey(SysCorporation record);
}