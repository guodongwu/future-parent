<#assign ctx=request.getContextPath()>
<html>
<head>
    <title></title>
    <script  src="${ctx}/static/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<table class="table">
    <tr>
        <td>
            <input type="number" id="keywords" name="keywords" class="form-control">
        </td>
        <td><input type="button" id="search" name="search" class="button" value="search"></td>
    </tr>
    <tr>
        <td>编号</td>
        <td>国家</td>
        <td>查看</td>
    </tr>
    <#list page.list  as area>
        <tr>
            <td>${area.id}</td>
            <td>${area.name}</td>
            <td><a href="user/${area.id}">查看</a></td>
        </tr>
    </#list>

</table>
<a href="index?pageNum=1&parentId=${parentId}">首頁</a>
<a href="index?pageNum=${page.prePage}&parentId=${parentId}">上一頁</a>
<a href="index?pageNum=${page.nextPage}&parentId=${parentId}">下一頁</a>
<a href="index?pageNum=${page.pages}&parentId=${parentId}">末頁</a>
<script>
    $("#search").on("click",function () {
        location.href="index?parentId="+$("#keywords").val();
    })
</script>
</body>
</html>