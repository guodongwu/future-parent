/**
 * Created by wu on 2018/8/17.
 */
var userLogin={
    login:function () {
        var username= $("#username").val();
        var password= $("#password").val();
        /*if(this.isEmpty(username)){
            alert("U isEmpty");
            return;
        }
        if(this.isEmpty(password)){
            alert("P isEmpty");
            return;
        }*/
        var data={"username":username,"password":password};
        $.ajax({
            type: "post",
            url: "login",
            data:data,
            success: function(result) {
                if (result.code == 200) {
                    alert(result.message);
                    location.href="index";
                } else {

                    alert(result.message);
                }
            }
        });


    },
    isEmpty:function (str) {
        return !(str!="" && str!=null && str.length>0);
    }
};