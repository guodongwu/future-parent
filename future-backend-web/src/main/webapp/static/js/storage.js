/**
 * Created by wu on 2018/9/9.
 */
var storage ={
    get:function (key) {
        var value=localStorage.getItem(key);
        if(value){
            var value_json=JSON.parse(value);
            if(typeof value_json==="object"){
                return value_json;
            }else if(typeof  value_json==="number")
            {
                return value_json;
            }
        }else{
            return false;
        }
    },
    set:function (key,value) {
        localStorage.setItem(key,value);
    },
    remove:function (key) {
        localStorage.removeItem(key);
    },
    clear:function () {
        localStorage.clear();
    }

}
export  default  storage;