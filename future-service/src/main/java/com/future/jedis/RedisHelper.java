package com.future.jedis;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

/**
 * Created by wu on 2018/8/21.
 */
@Component
public class RedisHelper {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    public <T> void saveCache(String key,T t){
        String json= JSONObject.toJSONString(t);
        stringRedisTemplate.opsForValue().set(key,json);
    }
}
