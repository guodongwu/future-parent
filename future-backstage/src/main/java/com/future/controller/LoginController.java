package com.future.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.future.jedis.RedisHelper;
import com.future.utils.*;
import com.future.vo.LoginVo;
import org.apache.commons.codec.binary.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.ognl.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wu on 2018/9/11.
 */
@Controller
public class LoginController {

    @GetMapping("/capcha")
    public void capcha(HttpServletRequest request, HttpServletResponse response){
        new  CapchaHelper().getRandcode(request,response);
    }
    @GetMapping("/login")
    public  String login(){
        return "login";
    }

    @PostMapping(value = "/login",produces = "application/json;charset=utf-8")
    @ResponseBody
    public JsonResult login(HttpServletRequest request,HttpServletResponse response,@RequestBody LoginVo login){
        JsonResult jsonResult=new JsonResult();
        String code= login.getCode().toLowerCase();
        HttpSession session=request.getSession();
        String sessionCode= ((String) session.getAttribute(CapchaHelper.RANDOMCODEKEY)).toLowerCase();

        if( !(code!=null && sessionCode!=null && sessionCode.equals(code))){
            jsonResult.code="codeErr";
            jsonResult.message="请输入正确的验证码";
            return jsonResult;
        }
        if(login.getUsername().equals("admin") && login.getPassword().equals("admin")){
            Map map=new HashMap();
            map.put("id",login.getId());
            map.put("username",login.getUsername());
            String token=null;
            String sub=null;
            try {
                //添加token
                sub = new ObjectMapper().writeValueAsString(map);
                token= JJwtUtil.getInstance().createJWT(map, Constant.JWT_ID,"sys",sub,Constant.JWT_TTL);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
            String name=Md5Utils.encryptMD5(String.valueOf(login.getUsername()));
            session.setAttribute("key",name);

            String cookieToken= EncryptKit.getInstance().Base64Encode(token);
            String  md5Token=cookieToken;
            if(login.isRememberMe()){
                md5Token="YES"+cookieToken;
            }else {
                md5Token=cookieToken;
            }
            CookieKit.setCookie(response,name, md5Token, CookieKit.COOKIE_MAX_AGE);
            jsonResult.code="200";
            jsonResult.message="登录成功";
            jsonResult.data= Md5Utils.encryptMD5(token);
            //加入redis或者数据库
            return jsonResult;
        }
        return jsonResult;
    }

}
