package com.future.study.dozer;

import junit.framework.TestCase;
import org.dozer.Mapper;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.swing.*;
import java.util.Date;

/**
 * Created by wu on 2018/9/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dozer.xml"})
public class DozerTest extends TestCase {
    @Autowired
    Mapper mapper;
    @Test
    public  void TestBeanCopy(){
        BeanA a=new BeanA();
        a.setName("邦德");
        a.setId(007);
        a.setDate(new Date());
        BeanB b=mapper.map(a,BeanB.class);
        Assert.assertNotNull(b);
    }

}
