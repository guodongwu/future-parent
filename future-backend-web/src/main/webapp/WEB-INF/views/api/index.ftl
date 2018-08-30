<#assign  ctx=request.getContextPath()>
<style>
    * { margin:0; }
    #demo { margin:auto; position:relative; }
    .box { float:left; padding:10px; border:1px solid #ccc; background:#f7f7f7; box-shadow:0 0 8px #ccc; }
    .box:hover { box-shadow:0 0 10px #999; }
    .box img { width:300px; }
    .box video{width:300px;}
    .wrap{white-space:normal; width:300px; }
</style>
<div id="demo">

</div>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/js/jquery.waterfall.min.js"></script>
<script>
    $("#demo").waterfall({
        itemClass: ".box",
        minColCount: 2,
        spacingHeight: 10,
        resizeable: true,
        ajaxCallback: function(success, end) {
            load();
            success();
            end();
        }
    });
    load();
    function  load() {
        var page = 1;
        $.ajax({
            url: "${ctx}/api/index?page=" + (page++),
            type: "POST",
            async: false,
            success: function (data) {
                console.log(data);
                var str = "";
                var templ = '<div class="box" style="opacity:0;filter:alpha(opacity=0);">' +
                        '<div class="pic">' +
                        '<img src="{{src}}" onerror="imgOnerror(this)"/><br/>' +
                        '<div class="wrap">{{text}}</div>' +
                        '</div>' +
                        '</div>';
                var temp2 = '<div class="box" >' +
                        '<video src="{{src}}" controls /><br/>' +
                        '<div class="wrap">{{text}}</div>' +
                        '</div>'

                for (var i = 0; i < data.length; i++) {
                    if(data[i].video!=null && data[i].video!="")
                        str += temp2.replace("{{src}}", data[i].video).replace("{{text}}",data[i].text);
                    else
                        str += templ.replace("{{src}}", data[i].thumbnail).replace("{{text}}",data[i].text);
                }
                $(str).appendTo($("#demo"));
                success();
                end();
            }
        });
    }

    function imgOnerror(img) {
        img.src = "${ctx}/static/img/01.jpg";
        img.onerror=null;//控制不要一直跳动
    }
</script>
