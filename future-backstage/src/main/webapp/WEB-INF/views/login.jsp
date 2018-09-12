<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../taglib/taglib.jsp"%>
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
                            <input type="checkbox" name="rememberMe" value="1"/>记住我
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
    <script src="${ctx}/static/js/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/js/jquery.validate.js"></script>
    <script src="${ctx}/static/js/login/jquery.backstretch.js"></script>
    <script src="${ctx}/static/js/layer/layer.js"></script>
    <script src="${ctx}/static/js/request.js"></script>
    <script src="${ctx}/static/js/storage.js"></script>
    <script src="${ctx}/static/js/login/login.js"></script>
    </body>
    </html>
