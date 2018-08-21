package com.future.mapper;

import com.future.pojo.BaseUser;

public interface BaseUserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(BaseUser record);

    int insertSelective(BaseUser record);

    BaseUser selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(BaseUser record);

    int updateByPrimaryKey(BaseUser record);
}