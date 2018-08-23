package com.future.vo;

import com.future.validator.ValidatorLogin;
import com.future.validator.ValidatorRegister;
import org.hibernate.validator.constraints.Length;

import javax.validation.GroupSequence;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Created by wu on 2018/8/22.
 */
public class UserVo {
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @NotBlank(message="{user.isnull}",groups = {ValidatorRegister.class,ValidatorLogin.class})
    private   String username;
    @NotBlank(message="请输入密码",groups = {ValidatorRegister.class,ValidatorLogin.class})
    private  String password;
    @NotBlank(message="请确认密码",groups = {ValidatorRegister.class})

    private  String cpwd;
    @NotBlank(message="请输入验证码",groups = { ValidatorRegister.class})
    private String code;
    @NotBlank(message="请输入电话",groups = { ValidatorRegister.class})
    @Pattern(regexp = "^[1][0-9]{10}$",message = "请输入正确的手机号",groups = {ValidatorRegister.class})
    private  String phone;

    @NotBlank(message="请输入邮箱",groups = { ValidatorRegister.class})
    @Email(message = "请输入正确的邮箱信息",groups = {ValidatorRegister.class})
    private String email;
    public String getPhone() {
        return phone;
    }

    public String getCpwd() {
        return cpwd;
    }

    public void setCpwd(String cpwd) {
        this.cpwd = cpwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
