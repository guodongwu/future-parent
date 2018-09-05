<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.future.pojo.BaseUser" %><%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/8/30
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="my" uri="/mytag" %>
<html>
    <title></title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
</head>
<body>

<div class="container">
    <div class="form row">
    <form method="post" class="form-horizontal" action="ServletEx3"  enctype="multipart/form-data"  role="form">
        <div class="form-group">
            <label  class="col-sm-2 control-label">名字</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" name="name" id="name"/>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">网址</label>
            <div class="col-sm-10">
                <input class="form-control"  type="text" name="url"/>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">上传</label>
            <div class="col-sm-10">
                <input class="form-control"  type="file" name="file"/>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">网址</label>
            <div class="col-sm-10">
                <input class="checkbox checkbox-inline"  type="checkbox" name="java" checked/>java
                <input class="checkbox checkbox-inline"  type="checkbox" name="net"/>net
                <input class="checkbox checkbox-inline"  type="checkbox" name="python" checked/>python
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input class="btn btn-primary" type="submit"  value="提交" />
            </div>
        </div>
    </form>

    </div>
</div>
<div class="panel"><my:hello/>
    <%
        int n1=0,n2=0;
        if(request.getParameter("num1")!=null)
            n1=Integer.parseInt(request.getParameter("num1"));
        if(request.getParameter("num1")!=null)
            n2=Integer.parseInt(request.getParameter("num2"));
    %>
<my:max num1="<%=n1%>" num2="<%=n2%>"></my:max>
    <%! int size=3;%>
    <my:greet>
        <font style="color:blue" size="<%=size++%>">abc</font>
    </my:greet>

    <% if(size>5) size=3;%>

    <%
        String name="default";
        if(request.getParameter("name")!=null){
            name=request.getParameter("name").toLowerCase();
        }
    %>
    <my:switch>
        <my:case cond='<%=name.equals("admin")%>'>
            <% out.println(name+" is  Manager");%>
        </my:case>
        <my:case cond='<%=name.equals("guest")%>'>
            <% out.println(name+" is  Guest");%>
        </my:case>
        <my:default>
            <% out.println(name+" is  employee");%>
        </my:default>
    </my:switch>
<% List list=new ArrayList();

    for(int i=0;i<10;i++) {
        BaseUser user = new BaseUser();
        user.setUserName("admin" + i);
        user.setPhone("1351111110" + i);
        list.add(user);
    }
%>
    <!--设置tag的 variable-class
    <variable>
            <name-from-attribute>var</name-from-attribute>
            <variable-class>com.future.pojo.BaseUser</variable-class>
            <scope>NESTED</scope>
    </variable>
    -->
    <%--<jsp:useBean id="user" class="com.future.pojo.BaseUser" />--%>
    <table class="table">
        <tr>用户名<td></td><td>电话</td></tr>
        <my:iterate var="user" items="<%=list%>">
            <Tr>
                <td><jsp:getProperty name="user" property="userName"/></td>
                <td>${user.phone}</td>
            </Tr>
        </my:iterate>
    </table>

</div>
</body>
</html>
