package com.future.freemarker;

import freemarker.core.Environment;
import freemarker.template.*;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by wu on 2018/8/26.
 */
@Component
public class RoleDirectiveModel implements TemplateDirectiveModel{
    @Override
    public void execute(Environment environment, Map map, TemplateModel[] templateModels, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        TemplateScalarModel user= (TemplateScalarModel) map.get("user");
        TemplateScalarModel role= (TemplateScalarModel) map.get("role");
        //逻辑判断
         if("admin".equals(user.getAsString()) && "admin".equals(role.getAsString())){
             templateModels[0]=TemplateBooleanModel.TRUE;
         }else
             templateModels[0]=TemplateBooleanModel.FALSE;
        List<String> otherRights=new ArrayList<>();
        otherRights.add("add");
        otherRights.add("delete");
        otherRights.add("update");
        templateModels[1]=new SimpleSequence(otherRights);
        templateDirectiveBody.render(environment.getOut());

    }
}
