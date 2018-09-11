package com.future.controller;

import com.future.utils.CapchaHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by wu on 2018/9/11.
 */
@Controller
public class LoginController {


    @GetMapping("/capcha")
    public void capcha(HttpServletRequest request, HttpServletResponse response){
        new  CapchaHelper().getRandcode(request,response);
    }

}
