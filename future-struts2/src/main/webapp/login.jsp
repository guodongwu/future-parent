<%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/9/6
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
    <h3>普通青年</h3>
    <form class="form-group" action="login2.action" method="post">
        <input type="text" class="form-control" name="userName"/>
        <input type="password" class="form-control" name="password"/>
        <input type="submit" class="btn btn-primary" value="submit"/>
    </form>
    <h3>二逼青年</h3>
    <s:form cssClass="form-group" action="login.action" method="post">
        <s:fielderror></s:fielderror>
        <s:textfield cssClass="form-control" name="userName" label="用户名"/>
        <s:password cssClass="form-control" name="password" label="密码"/>
        <s:submit cssClass="btn btn-primary" value="登录"/>
    </s:form>
</div>
</body>
</html>
