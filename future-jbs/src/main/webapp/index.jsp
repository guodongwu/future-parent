<%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/8/30
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</body>
</html>
