package com.future.controller;

import com.future.json.DataBean;
import com.future.json.JokeBean;
import com.future.utils.OKHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wu on 2018/8/27.
 */
@Controller
@RequestMapping("/api")
public class JsonController {
    @GetMapping(value = {"/","/index"})
    public  String index() throws IOException {
        String  URL="https://www.apiopen.top/satinGodApi";
        Map map=new HashMap();
        map.put("type",1);
        map.put("page",1);
        String str= OKHttpUtil.SendByGet(URL,map);

        return "api/index";
    }
    @PostMapping(value = {"/","/index"},produces = "application/json")
    public @ResponseBody  String index(@RequestParam(defaultValue = "1",required = false) int page) throws IOException {
        String  URL="https://www.apiopen.top/satinGodApi";
        Map map=new HashMap();
        map.put("type",1);
        map.put("page",1);
        String str= OKHttpUtil.SendByGet(URL,map);
        Gson gson=new GsonBuilder().create();
        JokeBean jokeBean=  gson.fromJson(str, JokeBean.class);
        if(jokeBean.getCode()==200){
           List<DataBean> data=jokeBean.getData();
            return  gson.toJson(data);
        }
        return null;
    }
}
