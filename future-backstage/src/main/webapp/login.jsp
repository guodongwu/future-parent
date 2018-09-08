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

    <script src="${ctx}/static/js/jquery.min.js"></script>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/js/login/jquery.backstretch.js"></script>
    <script type="text/javascript">
        $(".container").css({ opacity: .8 });   //设置透明度
        var images=["images/login/1.jpg","images/login/2.jpg","images/login/3.jpg","images/login/4.jpg","images/login/5.jpg","images/login/6.jpg"];
        $.backstretch(images, { duration: 3000, fade: 750 });


    </script>
    <body>
    <div class="container">
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title">LOGIN</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                    </div>
                    <div class="form-group">
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"/>记住我
                        </label>
                    </div>
                    <div class="form-group">
                        <div class="form-inline">
                            <button onclick="user.login()" class="btn btn-success" name="submit">登录</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
    </html>
