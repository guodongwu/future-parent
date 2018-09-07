package com.future;

import java.io.Serializable;
import java.util.List;

/**
 * Created by wu on 2018/8/20.
 */
public interface BaseMapper<T,PK extends Serializable> {
    int deleteByPrimaryKey(PK permissionId);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(PK permissionId);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);
    List<T> getAll();
}
