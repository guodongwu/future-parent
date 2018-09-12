package com.future.controller;
import com.future.utils.Md5Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wu on 2018/8/20.
 */
@Controller
public class HomeController {

    @GetMapping(value = {"/","/index"})
    public String  index(){
        return "index";
    }
    @GetMapping("/remove")
    public @ResponseBody String removeSession(HttpServletRequest request){
        String name= Md5Utils.encryptMD5("admin");
        request.getSession().removeAttribute(name);
        return "remove";
    }

}
