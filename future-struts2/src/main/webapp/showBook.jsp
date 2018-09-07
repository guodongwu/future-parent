<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %><%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/9/6
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>

</head>
<body>
<div class="container">
    <!--ValueStack-->
   <h3> ValueStack</h3>
    <table class="table">
        <%
            ValueStack vs= (ValueStack) request.getAttribute("struts.valueStack");
            String[] books= (String[]) vs.findValue("books");
            for (String book:books){
                %>
        <tr>
            <td>书名</td>
            <td><%=book%></td>
        </tr>

        <%
            }


        %>

    </table>
    <!--taglib-->
    <h3>struts TagLib</h3>
    <table class="table">
        <s:iterator value="books" status="index">
            <s:if test="#index.odd==true">
                <tr style="background: #cccccc">
            </s:if>
            <s:else>
            <tr>
            </s:else>
            <td>书名</td>
            <td><s:property /></td>
            </tr>
        </s:iterator>
    </table>
</div>

</body>
</html>
