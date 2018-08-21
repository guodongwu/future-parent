package com.future.annotation;

import java.lang.annotation.*;

/**
 * Created by wu on 2018/8/21.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@Inherited
@Documented
public @interface RedisCache {
}
