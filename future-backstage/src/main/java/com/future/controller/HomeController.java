package com.future.controller;


import com.future.backend.entity.BaseArea;

import com.future.backend.service.BaseAreaService;
import com.future.backend.service.BaseUserService;
import com.future.activemq.producer.AMQProducerService;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import javax.jms.Destination;
/**
 * Created by wu on 2018/8/20.
 */
@Controller
public class HomeController {

    @GetMapping("/index")
    public String  index(){
        return "index";
    }

}
