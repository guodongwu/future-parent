package com.study.struts2.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.study.struts2.model.UserBean;

import java.util.Map;

/**
 * Created by wu on 2018/9/6.
 */
public class LoginAction extends ActionSupport implements ModelDriven<UserBean>{
    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private  String password;

    public String login() throws Exception {

        if("admin".equals(getUserName()) && "admin".equals(getPassword())){
            ActionContext.getContext().getSession().put("user",getUserName());
            return SUCCESS;
        }else{
            return ERROR;
        }
    }


     /*public void validate() {
            if(null==getUserName() || getUserName().trim().equals("")){
                addFieldError("userName",getText("user.required"));
            }
            if(getPassword()==null || getPassword().trim().equals("")){
                addFieldError("password",getText("pass.required"));
            }
        }*/
    public  String logout(){
        ActionContext.getContext().getSession().clear();
        return SUCCESS;
    }

    private UserBean userBean=new UserBean();
    @Override
    public UserBean getModel() {
        return userBean;
    }
    public  String login2(){
        if(getModel().getUserName().equals("admin")&&
        getModel().getPassword().equals("admin")){
            getModel().setTip("登录成功");
            return  SUCCESS;
        }else
            return ERROR;
    }
}
