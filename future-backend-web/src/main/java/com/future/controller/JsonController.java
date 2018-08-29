package com.future.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wu on 2018/8/27.
 */
@Controller
@RequestMapping("/api")
public class JsonController {
    @GetMapping(value = {"/","/index"})
    public  String index(){

        return "api/index";
    }
}
