/**
 * Created by wu on 2018/9/12.
 */
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
                'username':form.username.value,
                'password':form.password.value,
                'code':form.code.value,
                'rememberMe':form.rememberMe.checked
            };
            console.log(data);
            data=JSON.stringify(data);
            var url="login";
            post(url,data,function (data) {
                /*console.log('请求成功');*/
                setTimeout(function () {
                    layer.msg(data.message);//通过layer插件来进行提示信息
                },200);
                if(data.code==200){//服务器处理成功
                    storage.set("token",data.data);
                    setTimeout(function () {
                        location.replace("index");
                    },1500);
                }else{//服务器处理失败
                    if(alone){//改变ajax提交状态
                        ajaxStatus = true;
                    }
                }
            });

        }
    })
});