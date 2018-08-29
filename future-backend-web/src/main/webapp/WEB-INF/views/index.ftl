<#assign ctx=request.getContextPath()>
<html>
<head>
    <title></title>
    <script src="${ctx}/static/js/jquery.min.js"></script>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.js"></script>
    <link href="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.min.css" rel="stylesheet">
</head>
<body>
<div class="container text-center">
<table class="table">
    <tr>
        <td></td>
        <td>
            <input type="number" id="keywords" name="keywords" class="form-control">
        </td>
        <td><input type="button" id="search" name="search" class="btn btn-primary" value="search"></td>
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
    <div class="form-horizontal btn-group">
    <#if page.navigateFirstPage!=1>
        <a class="btn btn-default"  href="index?pageNum=1&parentId=${parentId}">首頁</a>
        <a class="btn btn-default"  href="index?pageNum=${page.prePage}&parentId=${parentId}">上一頁</a>
        <label class="btn btn-default">...</label>
    </#if>
    <#list page.navigatepageNums as navigatepageNum>
        <#if navigatepageNum==page.pageNum>
            <a class="btn btn-warning" href="index?pageNum=${navigatepageNum}">${navigatepageNum}</a>
        <#else >
            <a class="btn btn-default" href="index?pageNum=${navigatepageNum}">${navigatepageNum}</a>
        </#if>
    </#list>
    <#if page.navigateLastPage!=page.pageNum>
        <label class="btn btn-default">...</label>
        <a class="btn btn-default"  href="index?pageNum=${page.nextPage}&parentId=${parentId}">下一頁</a>
        <a class="btn btn-default"  href="index?pageNum=${page.pages}&parentId=${parentId}">末頁</a>
    </#if>
    </div>
</div>
<script>
    $("#search").on("click",function () {
        location.href="index?parentId="+$("#keywords").val();
    })
</script>
</body>
</html>