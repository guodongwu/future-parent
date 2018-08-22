package com.future.jedis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

/**
 * Created by wu on 2018/8/21.
 */
@Component
public class RedisUtil {
    @Autowired
    private StringRedisTemplate redisTemplate;
    public void set(String key,String value){
        redisTemplate.opsForValue().set(key,value);
    }
    public String get(String key){
       return redisTemplate.opsForValue().get(key);
    }

}
