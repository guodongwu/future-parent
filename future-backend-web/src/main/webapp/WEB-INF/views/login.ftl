<#assign ctx=request.getContextPath()>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>登录</title>

    <script src="${ctx}/static/js/jquery.min.js"></script>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<#--    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet">-->
    <script src="${ctx}/static/js/bootstrap.min.js"></script>

    <script src="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.js"></script>
    <link href="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.css" rel="stylesheet">

    <link href="${ctx}/static/css/login.css" rel="stylesheet"/>
    <script src="${ctx}/static/js/user/storage.js"></script>
    <script src="${ctx}/static/js/user/user.js"></script>
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
                        <a href="register" class="btn btn-link">没有账号，马上注册</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
