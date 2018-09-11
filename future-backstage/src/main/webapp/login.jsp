<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="taglib/taglib.jsp"%>
<html>
<head>
    <title>登录</title>
    <meta name="keywords" content="管理系统">
    <meta name="description" content="管理系统">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/login/login.css" rel="stylesheet"/>
    <link href="${ctx}/static/css/login/reveal.css" rel="stylesheet">
    <style>
        .error {
            color: red;
            border-color:red;
        }

        .valid {
            color: black;
        }
    </style>

    <body>
    <input style="display: none" id="massage" value="">
    <div class="container">
        <div class="form row">
            <form   method="post"  class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title  col-md-offset-3">登录</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="请输入用户名" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="请输入密码" id="password" name="password" maxlength="30"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <div class="form-inline">
                            <input type="text" class="form-control required" placeholder="验证码" style="width: 60%;" maxlength="4" name="code" id="code"/>
                            <img class="img-thumbnail"  src="capcha" onclick='this.src=this.src+"?"+new Date().getMilliseconds()'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"/>记住我
                        </label>
                    </div>
                    <div class="form-group">
                        <div class="form-inline">
                            <input type="submit"  class="btn btn-success" name="submit" value="登录">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div id="myModal" class="reveal-modal">
        <h3 style="margin-bottom: 20px; font-size: 16px;">温馨提示</h3>
        <p id="tip" style="text-align: center; font-size: 15px;">信息不正确!</p>
        <a class="close-reveal-modal">&#215;</a>
    </div>

    <script src="${ctx}/static/js/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/js/jquery.validate.js"></script>
    <script src="${ctx}/static/js/login/jquery.reveal.js"></script>
    <script src="${ctx}/static/js/login/jquery.backstretch.js"></script>
    <script src="${ctx}/static/js/common.js"></script>
    <script type="text/javascript">
        $(function () {
            $("body").css({ opacity: 8 });   //设置透明度
            var images=["static/images/login/1.jpg","static/images/login/2.jpg",
                "static/images/login/3.jpg","static/images/login/4.jpg",
                "static/images/login/5.jpg","static/images/login/6.jpg"];
            $.backstretch(images, { duration: 3000, fade: 750 });
            $.validator.addMethod("zz",function(value,element,params){
                if(""!=value){
                    var reg = eval(params);
                    return this .optional(element) || ( reg.test(value));
                }
            },"格式不正确");
           $("#login_form").validate({
               rules: {
                   username: {
                       required: true
                   },
                   password:{
                       required:true,
                       zz: /^[a-zA-Z\d_]{5,}$/
                   },
                   code:{
                       required:true
                   }
               },
               messages: {
                   username: {
                       required: "请填写用户名"
                   },
                   password: {
                       required:"请填写密码",
                       zz:'密码由5位以上数字或字母组成'
                   },
                   code:{
                       required: "请输入验证码"
                   }
               },
               errorClass: "error",
               success: 'valid',
               unhighlight: function (element, errorClass, validClass) { //验证通过
                   $(element).tooltip('destroy').removeClass(errorClass);
               },
               errorPlacement: function (error, element) {
                   if ($(element).next("div").hasClass("tooltip")) {
                       $(element).attr("data-original-title", $(error).text()).tooltip("show");
                   } else {
                       $(element).attr("title",
                               $(error).text()).tooltip("show");
                   }
               },
               submitHandler: function (form) {
                  var data={
                      'username':form.username,
                      'password':form.password,
                      'code':form.password
                  };
                  var url="${ctx}/"+"login";
                   

               }
           })
           });

    </script>
    </body>
    </html>
