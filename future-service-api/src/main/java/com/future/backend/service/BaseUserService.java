package com.future.backend.service;

import com.future.backend.entity.BaseUser;

import java.util.List;

/**
 * Created by wu on 2018/8/22.
 */
public interface BaseUserService {
    public BaseUser getUser(String username,String password);
    public boolean hasUserByUserNameOrPhone(String userName,String phone);
    public boolean addUser(BaseUser baseUser);

    public List<BaseUser> getUser();
}
