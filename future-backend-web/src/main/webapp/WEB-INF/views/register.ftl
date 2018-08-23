<#assign ctx=request.getContextPath()>
<html>
<head>
    <title>注册</title>

    <script src="${ctx}/static/js/jquery.min.js"></script>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<#--    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet">-->
    <script src="${ctx}/static/js/bootstrap.min.js"></script>

    <script src="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.js"></script>
    <link href="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/login.css" rel="stylesheet"/>
    <script src="${ctx}/static/js/user/user.js"></script>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-1">
            <h3 class="form-title col-md-offset-3">Register</h3>
            <div class="col-md-18">
                <form id="login_form" >
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-8">
                        <input class="form-control required" type="text" placeholder="username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-3 control-label">手机号</label>
                    <div class="col-sm-8">
                        <input class="form-control required" type="text" placeholder="phone" id="phone" name="phone" maxlength="11"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">邮箱</label>
                    <div class="col-sm-8">
                        <input class="form-control required" type="text" placeholder="email" id="email" name="email" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-8">
                    <input class="form-control required" type="password" placeholder="Password" id="password" name="password" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="cpwd" class="col-sm-3 control-label">确认密码</label>
                    <div class="col-sm-8">
                       
                        <input class="form-control required" type="password" placeholder="confirm Password" id="cpwd" name="cpwd" />
                    </div>
                </div>
                <div class="form-group ">
                    <label for="cpwd" class="col-sm-3 control-label">验证码</label>
                    <div class="form-inline col-sm-8">
                        <input type="text" class="form-control  required" style="width: 50%;" maxlength="4" name="code" id="code"/>
                        <img class="img-thumbnail" src="capcha" onclick='this.src=this.src+"?"+new Date().getMilliseconds()'/>
                    </div>
                </div>
                </form>
                <div class="form-group">
                    <div class="form-inline col-sm-8 text-center col-md-offset-2">
                    <button onclick="user.register()" class="btn btn-success " name="submit">注册</button>
                        <a href="login" class="btn btn-link">已有账号，直接登录</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
