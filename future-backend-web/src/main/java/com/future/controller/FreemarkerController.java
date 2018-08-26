package com.future.controller;

import com.future.freemarker.SortMethod;
import com.future.pojo.BaseUser;
import com.future.service.BaseUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

/**
 * Created by wu on 2018/8/25.
 */
@Controller
@RequestMapping("/freemarker")
public class FreemarkerController {
    @Autowired
    private BaseUserService baseUserService;
    @GetMapping("/basic")
    public String index(Model model){
        model.addAttribute("intVar",100);
        model.addAttribute("longVar",100);
        model.addAttribute("boolVar",true);
        model.addAttribute("dateVar",new Date());
        model.addAttribute("datesqlVar",new java.sql.Date(new Date().getTime()));
        model.addAttribute("nullVar",null);
        BaseUser user=new BaseUser(){{
            setUserName("张三");
            setAddress("王府大院");
        }};
        model.addAttribute("user",user);
        String html="<label class=\"label label-danger\">这是一个html片段</label>";
        model.addAttribute("htmlVar",html);

        List list=new ArrayList();
        list.add("Java");
        list.add("Python");
        list.add("C#");
        list.add("Go");
        model.addAttribute("list",list);
        Map map=new HashMap();
        map.put("java","maven,gradle,ant");
        map.put(".net","nuget");
        model.addAttribute("map",map);
        List<BaseUser> baseUsers=baseUserService.getUser();
        model.addAttribute("users",baseUsers);
        model.addAttribute("num",(int)(Math.random()*100));
        model.addAttribute("sort_int",new SortMethod());
        return "freemarker/basic";
    }
}
