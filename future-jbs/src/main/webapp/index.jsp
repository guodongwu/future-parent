<%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/8/30
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form class="panel  form-group " action="/ServletEx3" method="post">
        名字：<input class="form-control" type="text" name="name"/>
        网址：<input class="form-control"  type="text" name="url"/>
        <input class="form-control" type="submit" value="提交" />
    </form>
</body>
</html>
