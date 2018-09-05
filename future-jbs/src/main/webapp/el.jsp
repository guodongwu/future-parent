<%--
  Created by IntelliJ IDEA.
  User: wu
  Date: 2018/9/5
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="my" uri="/mytag" %>
<html>
<head>
    <title>EL表达式</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="panel">
        <div class="panel-body">
            <ul class="list-group">
                <h3>语法</h3>
                <li class="list-group-item">
                    <h4>基本[] .</h4>
                    <font class="label-primary">[]</font>:Map javaBean List 数组 <br/>
                    <font class="label-primary">.</font> :Map javaBean
                </li>
                <li class="list-group-item">
                    <h4>算数操作符</h4>
                    + - *  /(div)  %(mod)<br/>
                    <label class="label-warning">
                        A/B 如果A,B为null 返回(Long)0<br/>
                        BigDecimal或者BigInteger 强制转换BigDecimal 然后返回<br/>
                        其他返回double

                    </label>
                </li>
                <li class="list-group-item">
                    <h4>关系操作符</h4>
                    ==(eq) !=(ne) <(lt) >(gt) <=(le) >=(ge)
                </li>
                <li class="list-group-item">
                    <h4>逻辑操作符</h4>
                    &&(and) ||(or) !(not)
                </li>
                <li class="list-group-item">
                    <h4>Empty操作符</h4>
                    ${'${empty A}'} = ${empty A}
                </li>
                <li class="list-group-item">
                    <h4>条件操作符</h4>
                    ${'${A?B:C}'} = ${A?"has":"not"}
                </li>
                <li class="list-group-item">
                    <h4>()</h4>
                    改变执行优先级
                </li>
                <h3>隐含对象</h3>
                <li class="list-group-item">
                    pageContext:ServletContext ,Request,Response,Session<br/>
                    pageScope: 获取页面范围内的属性的值<br/>
                    requestScope:请求范围内的属性名和值<br/>
                    sessionScope:会话范围内的属性名和值<br/>
                    applicationScope:应用范围范围内的属性名和值<br/>
                    param:获取参数<br/>
                    paramValues:<br/>
                    header:获取请求报头的值<br/>
                    headerValues:<br/>
                    cookie:<br/>
                    initParam:<br/>
                </li>
                <h3>函数</h3>
                <li class="list-group-item">
                    1.首先声明公开静态函数  ps: static String toGBK(String str,String charset)<br/>
                    2.在taglib (tld)中声明<br/>
                    3.<br/>
                    &lt;uri&gt;/myfuncs&lt;/uri&gt;<br/>
                    &lt;function&gt;<br/>
                    &lt;name&gt;toGBK&lt;/name&gt;<br/>
                    &lt;function-class&gt;xxx.MyFuns&lt;/function-class&gt;<br/>
                    &lt;function-signature&gt;java.lang.String toGBK(java.lang.String,java.lang.String)&lt;/function-signature&gt;<br/>
                    &lt;/function&gt;<br/>
                    4.${'myfuncs:toGBK(param.username,"ISO-8890-1")'}<br/>
                    <label class="label-success">
                        效果:${my:sayFuck(param.name)}
                    </label>

                </li>
            </ul>
        </div>
    </div>
    <div class="panel">
        <div class="panel-body">
            <ul class="list-group">
                <h3>一般用途标签</h3>
                <li class="list-group-item">
                    out    JspWriter  value  escapeXml
                    set 设置范围变量或javaBean对象属性
                    remove 移除变量
                    catch 抛出异常
                </li>
                <h3>条件标签</h3>
                <li class="list-group-item">
                    if
                    choose
                    when
                    otherwise
                </li>
                <h3>迭代标签</h3>
                <li class="list-group-item">
                    forEach
                    forTokens
                </li>
                <h3>URL标签</h3>
                <li class="list-group-item">
                    import:url
                    url
                    redirect
                    param
                </li>
                <h3>I18N标签(fmt)</h3>
                <li class="list-group-item">
                    setLocale
                    bundle
                    setBundle
                    message
                    param
                    requestEncoding
                </li>
                <li class="list-group-item">
                   timeZone
                    setTimeZone
                    formatNumber
                    parseNumber
                    formatDate
                    parseDate
                </li>
                <h3>SQL标签(sql) </h3>
                <li class="list-group-item">
                    setDataSource
                    query
                    param
                    dateParam
                    update
                    transaction
                </li>
                <h3>Xml标签(x) </h3>
                <li class="list-group-item">
                    parse
                    out
                    set
                    
                </li>
            </ul>


        </div>
    </div>

</div>
</body>
</html>
