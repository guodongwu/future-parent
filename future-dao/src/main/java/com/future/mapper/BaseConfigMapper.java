package com.future.mapper;

import com.future.pojo.BaseConfig;

public interface BaseConfigMapper {
    int deleteByPrimaryKey(String configId);

    int insert(BaseConfig record);

    int insertSelective(BaseConfig record);

    BaseConfig selectByPrimaryKey(String configId);

    int updateByPrimaryKeySelective(BaseConfig record);

    int updateByPrimaryKey(BaseConfig record);
}