package com.future.controller;

import com.alibaba.fastjson.JSONObject;
import com.future.jedis.RedisUtil;
import com.future.pojo.BaseArea;
import com.future.pojo.BaseUser;
import com.future.service.BaseAreaService;
import com.future.service.BaseUserService;
import com.future.service.activemq.producer.AMQProducerService;
import com.future.utils.CapchaHelper;
import com.future.utils.JsonResult;
import com.future.utils.Md5Utils;
import com.future.utils.ResultCode;
import com.future.validator.ValidatorLogin;
import com.future.validator.ValidatorRegister;
import com.future.vo.UserVo;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.jms.Destination;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

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
    @Autowired
    private AMQProducerService producerService;
    @Autowired
    @Qualifier(value = "destinationQueue")
    private Destination destination;
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
    public JsonResult login(@Validated(value = ValidatorLogin.class) UserVo user, BindingResult errors){
        if(errors.getFieldErrorCount()>0){
            return  new JsonResult("500",errors.getFieldErrors().get(0).getDefaultMessage());
        }
        BaseUser baseUser= baseUserService.getUser(user.getUsername(),Md5Utils.encryptMD5(user.getPassword()));
        if(baseUser!=null){
            return new JsonResult("200","登录成功");
        }
        return new JsonResult("500","用户名或密码错误");

    }
    @GetMapping("/capcha")
    public void capcha(HttpServletRequest request, HttpServletResponse response){
        new  CapchaHelper().getRandcode(request,response);
    }
    @GetMapping("/register")
    public String register(){
        return "register";
    }
    @PostMapping(value="/register",produces = "application/json;charset=UTF-8")
    public @ResponseBody JsonResult register(HttpServletRequest request,Model model,@Validated(value = ValidatorRegister.class) UserVo user,BindingResult errors){
        if(errors.getFieldErrorCount()>0){
            return  new JsonResult("500",errors.getFieldErrors().get(0).getDefaultMessage());
        }
        if(!user.getPassword().equals(user.getCpwd())){
            return new JsonResult("501","两次密码不一致");
        }
        HttpSession session= request.getSession();
        String code= (String) session.getAttribute(CapchaHelper.RANDOMCODEKEY);

        if(code==null || !code.toLowerCase().equals(user.getCode().toLowerCase())){
            return new JsonResult("501","验证码错误");
        }
        boolean hasOne= baseUserService.hasUserByUserNameOrPhone(user.getUsername(),user.getPhone());
        if(hasOne){
            return new JsonResult("501","用户名或手机号已存在");
        }
        BaseUser baseUser=new BaseUser(){{
            setUserStatus(1);
            setAddTime(new Date());
            setStatus((byte)1);
            setUserName(user.getUsername());
            setPassword(Md5Utils.encryptMD5(user.getPassword()));
            setPhone(user.getPhone());
        }};
        boolean result= baseUserService.addUser(baseUser);
        //boolean result=true;
        if(result){
            //发送邮件
            String json= JSONObject.toJSONString(baseUser);
            StringBuilder sb=new StringBuilder();
            sb.append("{\"userType\":\"register\",\"user\":"+json+"}");
            producerService.sendMsg(destination,sb.toString());
            return new JsonResult("200","注册成功！");
        }
        return new JsonResult("501","注册失败");
    }
}
