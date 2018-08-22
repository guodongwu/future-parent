package com.future.mapper;

import com.future.pojo.BaseUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface BaseUserMapper  extends BaseMapper<BaseUser,Integer>{
    @Select("select * from base_user where user_name=#{userName} and password=#{password}")
    public BaseUser getUser(@Param("userName")  String username, @Param("password") String password);
}