package com.future.aspect;

import com.future.jedis.RedisHelper;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by wu on 2018/8/21.
 */

@Component
@Aspect
public class RedisCacheAspect {
    @Autowired
    private RedisHelper redisHelper;
    @Pointcut("@annotation(com.future.annotation.RedisCache)")
    public  void setJoinPoint(){
        System.out.println("我是一个切入点");
    }
    @Around(value = "setJoinPoint")
    public Object aroundMethod(ProceedingJoinPoint proceedingJoinPoint){
        Object result=null;
        System.out.println("调用从redis中查询的方法...");
        try {
            result=proceedingJoinPoint.proceed();
            Object[] args=proceedingJoinPoint.getArgs();
            redisHelper.saveCache(result.getClass().getName()+"-"+args[0],result);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return result;

    }
}
