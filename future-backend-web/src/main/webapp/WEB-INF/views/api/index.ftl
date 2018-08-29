<#assign  ctx=request.getContextPath()>
<style>
    * { margin:0; }
    #demo { margin:auto; position:relative; }
    .box { float:left; padding:10px; border:1px solid #ccc; background:#f7f7f7; box-shadow:0 0 8px #ccc; }
    .box:hover { box-shadow:0 0 10px #999; }
    .box img { width:300px; }
</style>
<div id="demo">
    <div class="box"><img src="${ctx}/static/img/01.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/02.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/03.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/04.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/05.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/06.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/07.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/01.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/02.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/03.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/04.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/05.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/06.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/07.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/01.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/02.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/03.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/04.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/05.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/06.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/07.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/01.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/02.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/03.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/04.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/05.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/06.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/07.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/01.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/02.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/03.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/04.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/05.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/06.jpg" alt=""></div>
    <div class="box"><img src="${ctx}/static/img/07.jpg" alt=""></div>
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
            var data = {"data": [
                { "src": "03.jpg" },
                { "src": "04.jpg" },
                { "src": "02.jpg" },
                { "src": "05.jpg" },
                { "src": "01.jpg" },
                { "src": "06.jpg" }
            ]};
            var str = "";
            var templ = '<div class="box" style="opacity:0;filter:alpha(opacity=0);">' +
                    '<div class="pic">' +
                    '<img src="${ctx}/static/img/{{src}}" />' +
                    '</div>' +
                    '</div>'

            for(var i = 0; i < data.data.length; i++) {
                str += templ.replace("{{src}}", data.data[i].src);
            }
            $(str).appendTo($("#demo"));
            success();
            end();
        }
    });
</script>
