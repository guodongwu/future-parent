/**
 * Created by wu on 2018/8/17.
 */
var user={
    login:function () {
        var username= $("#username").val();
        var password= $("#password").val();
        var data={"username":username,"password":password};
        $.ajax({
            type: "post",
            url: "login",
            data:data,
            success: function(result) {
                if (result.code == 200) {
                    swal({
                        title: '提示！',
                        text: result.message,
                        timer: 2000
                    }).then(
                        function () {
                            location.href="index";
                        });

                } else {
                    swal({
                        title: '提示！',
                        text: result.message,
                        timer: 2000
                    });
                }
            }
        });
    },
    register:function () {
        var data = $("#login_form").serialize();
        $.ajax({
            type: "post",
            url: "register",
            data:data,
            success: function(result) {
                if (result.code == 200) {
                    swal({
                        title: '提示！',
                        text: result.message,
                        timer: 2000
                    }).then(
                        function () {
                            location.href="index";
                        });
                } else {
                    swal({
                        title: '提示！',
                        text: result.message,
                        timer: 2000
                    });
                }
            }
        });
    },
    isEmpty:function (str) {
        return !(str!="" && str!=null && str.length>0);
    }
};