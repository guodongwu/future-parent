package com.future.mapper;

import com.future.pojo.BaseSlide;

public interface BaseSlideMapper {
    int deleteByPrimaryKey(Integer slideId);

    int insert(BaseSlide record);

    int insertSelective(BaseSlide record);

    BaseSlide selectByPrimaryKey(Integer slideId);

    int updateByPrimaryKeySelective(BaseSlide record);

    int updateByPrimaryKey(BaseSlide record);
}