package com.future.backend.service.impl;

import com.future.annotation.RedisCache;
import com.future.backend.mapper.BaseAreaMapper;
import com.future.backend.entity.BaseArea;
import com.future.backend.service.BaseAreaService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wu on 2018/8/20.
 */
@Service
public class BaseAreaServiceImpl implements BaseAreaService {

    @Autowired
    private BaseAreaMapper baseAreaMapper;
    @Override
    @RedisCache
    public PageInfo<BaseArea> getAllByParentId(int parentId,int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<BaseArea> list= baseAreaMapper.getAllByParentId(parentId);
        PageInfo<BaseArea> pageInfo=new PageInfo<>(list);
       return pageInfo;
    }

    @RedisCache
    public BaseArea getBaseArea(int id) {
        BaseArea baseArea= baseAreaMapper.selectByPrimaryKey(id);
        return baseArea;
    }
}
