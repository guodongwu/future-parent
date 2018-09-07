<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>

${sessionScope.user}已经登录！
<a href="books.action">查看书籍</a>
<a href="logout.action">退出</a>
<s:property value="model.tip"/>
</body>
</html>
