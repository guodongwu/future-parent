package com.future.service;

import com.future.pojo.BaseUser;

/**
 * Created by wu on 2018/8/22.
 */
public interface BaseUserService {
    public BaseUser getUser(String username,String password);
}
