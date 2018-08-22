package com.future.controller;

import com.alibaba.fastjson.JSONObject;
import com.future.jedis.RedisUtil;
import com.future.pojo.BaseArea;
import com.future.pojo.BaseUser;
import com.future.service.BaseAreaService;
import com.future.service.BaseUserService;
import com.future.utils.JsonResult;
import com.future.utils.ResultCode;
import com.future.vo.UserLogin;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * Created by wu on 2018/8/20.
 */
@Controller
public class HomeController {
    @Autowired
    private BaseAreaService baseAreaService;

    @Autowired
    private BaseUserService baseUserService;
    @Autowired
    private RedisUtil redisHelper;
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
        }
        model.addAttribute("baseArea",baseArea);
        return "user";
    }


    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @PostMapping(value = "/login" ,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public JsonResult login(@Valid UserLogin user, Errors errors){
        if(errors.getErrorCount()>0){
            return  new JsonResult("500",errors.getFieldErrors().get(0).getDefaultMessage());
        }
        BaseUser baseUser= baseUserService.getUser(user.getUsername(),user.getPassword());
        if(baseUser!=null){
            return new JsonResult(ResultCode.SUCCESS);
        }
        return new JsonResult("500","用户名或密码错误");

    }
}
