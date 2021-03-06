package com.future.backend.mapper;

import com.future.BaseMapper;
import com.future.backend.entity.BaseUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface BaseUserMapper  extends BaseMapper<BaseUser,Integer> {
    @Select("select * from base_user where user_name=#{userName} and password=#{password}")
    public BaseUser getUser(@Param("userName")  String username, @Param("password") String password);
    @Select("select count(*) from base_user where user_name=#{userName} or phone=#{phone}")
    public int hasUserByUserNameOrPhone(@Param("userName") String username,@Param("phone") String phone);
}