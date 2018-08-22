package com.future.service.impl;

import com.future.mapper.BaseUserMapper;
import com.future.pojo.BaseUser;
import com.future.service.BaseUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wu on 2018/8/22.
 */
@Service
public class BaseUserServiceImpl implements BaseUserService {
    @Autowired
    private BaseUserMapper baseUserMapper;
    @Override
    public BaseUser getUser(String username, String password) {
       return baseUserMapper.getUser(username,password);
    }
}
