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
    @Autowired
    private BaseAreaService baseAreaService;

    @Autowired
    private BaseUserService baseUserService;
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

}
