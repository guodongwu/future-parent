package com.future.controller;

import com.alibaba.fastjson.JSONObject;
import com.future.pojo.BaseArea;
import com.future.jedis.RedisHelper;
import com.future.service.BaseAreaService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by wu on 2018/8/20.
 */
@Controller
public class HomeController {
    @Autowired
    private BaseAreaService baseAreaService;
    @Autowired
    private  RedisHelper redisHelper;
    @GetMapping("/index")
    public String  index(Model model,@RequestParam(defaultValue = "0",name = "parentId",required = false)Integer parentId,
            @RequestParam(defaultValue = "1",name = "pageNum",required = false) Integer pageNum,
                         @RequestParam(defaultValue = "10",name = "pageSize",required = false) Integer pageSize){
        PageInfo<BaseArea> list= baseAreaService.getAllByParentId(parentId,pageNum,pageSize);
        model.addAttribute("page",list);
        model.addAttribute("parentId",parentId);
        return "index";
    }
    @GetMapping("/user/{id}")
    public String detail(Model model,@PathVariable( name = "id",required = false) int id){
        if(id==0){
            return "index";
        }
        String key=BaseArea.class.getName()+"-"+id;
        String json=redisHelper.get(key);
        BaseArea baseArea=null;
        if(json!=null){
            JSONObject jsonObject=JSONObject.parseObject(json);
            baseArea= (BaseArea) JSONObject.toJavaObject(jsonObject,BaseArea.class);
        }else{
            baseArea=baseAreaService.getBaseArea(id);
           // json= JSONObject.toJSONString(baseArea);
            //redisHelper.set(BaseArea.class.getName()+"-"+id,json);
        }
        model.addAttribute("baseArea",baseArea);
        return "user";
    }

}
