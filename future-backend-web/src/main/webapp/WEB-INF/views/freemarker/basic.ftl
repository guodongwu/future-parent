<#assign ctx=request.getContextPath()>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet"/>

<div class="container">
        <h3>1.FreeMarker基本类型</h3>
        <ul class="list-group">
            <li class="list-group-item" >
                整型：<span class="label label-danger">${intVar}</span>
            </li>
            <li class="list-group-item">
                长整型：<span class="label label-danger">${longVar}</span>
            </li>
            <li class="list-group-item">
               bool：<span class="label label-danger">${boolVar} | ${boolVar?string('true','false')}</span> <span class="label label-warning">注：?string("true","false")转换或者通过配置boolean_format（yes,no）</span>
            </li>
            <li class="list-group-item">
                时间:<span class="label label-danger">${dateVar?string("yyyy-MM-dd HH:mm:ss")}</span><span class="label label-warning">注：java.util.Date  ?string('yyyy-MM-dd')</span>
            </li>
            <li class="list-group-item">
                时间：<span class="label label-danger">${datesqlVar}</span><span  class="label label-warning">注：freemarker 支持的是 java.sql.Date </span>
            </li>
            <li class="list-group-item">
                NULL：<span class="label label-danger">${nullVar!"默认值"}</span><span  class="label label-warning">null  or  missing不能输出（使用${r'${value!"默认值"}'}） 否则报错  </span>
            </li>
        </ul>
        <h3>2.&lt;#assign&gt;</h3>
        <ul class="list-group">
            <li class="list-group-item">
                <h4>赋值&运算</h4>
                <#assign a=100>
                <p class="text-danger">
                    &lt;#assign a=100&gt;<br/>
                    a=${a}<br/>
                    a+100=${a+100}
                </p>
            </li>
        </ul>
        <h3>3.封装类型</h3>
        <ul class="list-group">
            <li class="list-group-item">
                <h4>对象</h4>
                <p class="text-danger">
                   ${(user.userName)!}住在${(user.address)!}
                </p>
                <p class="text-warning">
                ${r'${(user.userName)!}'} !表示判断最近的变量值 使用()! 整体判断
                </p>
            </li>
            <li class="list-group-item">
                <h4 >集合</h4>
                <p class="text-info">
                    <h5 class="text-primary">1.List  &lt;String&gt;</h5>
                    <div class="panel">
                        <#list list as str>
                            ${str!}
                        </#list>
                    </div>
                </p>
                <p class="text-info">
                <h5 class="text-primary">2.List &lt;Object&gt;</h5>
                <div class="panel">
                <#list users as user>
                            ${(user.userName)!}
                </#list>
                </div>
                </p>
                <p class="text-info">
                <h5 class="text-primary">3.Map</h5>
                <div class="panel">
                <#list map?keys as key>
                          <label class="label-success"> ${key}</label> :<label class="label-info">${map[key]} </label><br/>
                </#list>
                </div>
                </p>
            </li>
            <li class="list-group-item">
                <h4>HTML</h4>
                <p> ${htmlVar}
                    <p class="text-warning">
                        默认输出html并解析
                    </p>
                </p>

                <p>${htmlVar!?html}
                    <p class="text-warning">
                    ${r'${htmlVar!?html}'} ?html 代表输出html代码 输出文本
                    </p>
                </p>

            </li>
            <h3>4.#if #elseif #else</h3>
            <li class="list-group-item">
                判断随机数:
                <#if num==50>
                    <label class="label-success">${num}==50</label>
                    <#elseif num &lt;50>
                        <label class="label-info">${num}&lt;50</label>
                    <#else >
                    <label class="label-info">${num}&gt;50</label>
                </#if><br/>
                变量hValue:<#if hValue?exists>
            <label class="label-info">存在${abc}</label>
                <#else>
                <label class="label-info"> 不存在变量hValue</label>
                </#if><br/>
                if多条件 || && !  ():
                <label class="label-info">${r'<#if !(var==0 || (x=="abc" && y="abc"))>

                    </#if>'}</label>
                <p class="label-warning">
                    ${r'<#if var??></#if>'} ?? 变量是否存在  !默认值 ?has_content  ?exists ?string('') ?date ?time ?datetime<br/>

                </p>
            </li>
            <h3>5.switch</h3>
            <li class="list-group-item">
                <#switch num>
                    <#case 10>
                    <#case 20>
                     case  10 or 20
                    <#break>
                    <#case 30>
                        case 30
                    <#break >
                    <#default>
                        ${num}
                </#switch>
                <p class="text-warning">switch 支持String 类型</p>
            </li>
            <h3>6.自定义函数</h3>
            <li class="list-group-item">
                <h4>String</h4>
                <p>
                    pstr1="abc" pstr2="def"<br/>
                <#assign pstr1="abc" pstr2="def" myNum=1234.56789>
                    连接(+)：${pstr1+pstr2}<br/>
                    截取(substring)：${(pstr1+pstr2)?substring(1,2)}<br>
                    长度(length)：${(pstr1+pstr2)?length}<br/>
                    大写(upper_case)：${(pstr1+pstr2)?upper_case}<br/>
                    小写(lower_case)：${(pstr1+pstr2)?lower_case}<br/>
                    替换(replace)：${(pstr1+pstr2)?replace("a","g")}<br/>
                    index of(index_of)：${(pstr1+pstr2)?index_of("c")}<br/>
                    last index of(last_index_of)：${(pstr1+pstr2)?last_index_of("c")}<br/>
                    分割(split)：<#list (pstr1+pstr2)?split('cd') as sp> ${sp}</#list><br/>
                    数字格式化(string("0.##")|round):${myNum?string("0.##")}|${myNum?round}<br/>

                </p>
            </li>
            <li class="list-group-item">
                <h4>自定义函数</h4>
                <p>
                    <h5>排序</h5>
                <#assign  numarray=[1,4,3,7,9,6,5,2,8,0] >
                    <div class="label-info">
                        未排序:
                    <#list  numarray as arr>
                        ${arr},
                    </#list>
                    </div>
                    <div class="label-success">
                        已排序:
                    <#list  sort_int(numarray) as arr>
                    ${arr},
                    </#list>
                    </div>
                    <div class="label-danger">
                        ${r'<#list  sort_int(numarray) as arr><br/>
                        ${arr},<br/>'}
                        &lt;/#list&gt;
                       使用方式：<br/>
                        1. model.addAttribute("sort_int",new SortMethod());<br/>
                        2.SortMethod implements TemplateMethodModelEx
                    </div>

                <h5>List内置排序 sort</h5>
                <#list numarray?sort as arr>
                    ${arr_index}:${arr},
                </#list><br/>
                <#list numarray?reverse as arr>
                ${arr_index}:${arr},
                </#list><br/>
                chunk:SIZE:${numarray?chunk(3)?size} <br/>
                chunk:FIRST:<#list  numarray?chunk(3)?first as part>${part},</#list>
                <br/>
                </p>
            </li>
            <li class="list-group-item">
                <h4>自定义指令</h4>
                ex:<@role user="admin" role="admin";result1,result2>
                   ${result1!}
                    <#list  result2 as item>
                        ${item},
                    </#list>
                </@role>
                <p class="text-warning">
                    1.${r'<@role 参数1 参数2 ;返回值1,返回值2>'}<br/>
                    2.implements TemplateDirectiveModel <br/>
                    3.freemarker 模板设置<br/>
                    ${('<property name="freemarkerVariables">')?html}<br/>
                    &nbsp; &nbsp; &nbsp; ${('<map>')?html}<br/>
                    &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  ${('<entry key="xml_escape" value-ref="fmXmlEscape"/>')?html}<br/>
                    &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  ${(' <entry key="role" value-ref="roleDirectiveModel"/>')?html}<br/>
                    &nbsp; &nbsp; &nbsp; ${('</map>')?html}<br/>
                    &nbsp;${(' </property>')?html}<br/>
                </p>
            </li>
        </ul>
        <h3>#macro</h3>
        <ul class="list-group">
            <li class="list-group-item">
                <h4>无参</h4>
                <p><#macro  test>
                    ${('<#macro test>...</#macro>')?html}<br/>
                    ${('<@test/>')}<br/>
                </#macro>
                <@test/>
                </p>
                <h4>有参</h4>
                <p><#macro  test param1 param2>
                ${('<#macro test param1 param2>')?html} param1=${param1},param2=${param2} ${('</#macro>')?html}<br/>
                ${('<@test param1="abc" param2="cdef"/>')}<br/>
                </#macro>
                <@test param1="abc" param2="cdef"/>
                </p>
                <h4>有默认值的参</h4>
                <p><#macro  test param1 param2="biubiubiu">
                ${('<#macro test param1 param2="biubiubiu">')?html} param1=${param1},param2=${param2} ${('</#macro>')?html}<br/>
                ${('<@test param1="abc"/>')}<br/>
                </#macro>
                <@test param1="abc"/>
                </p>
                <h4>有多个参</h4>
                <p><#macro  test param1 param2="biubiubiu" paramn...>
                ${('<#macro test param1 param2="biubiubiu" paramn...>')?html} <br/>
                    param1=${param1},param2=<label class="label-danger">${param2}</label>,paramn["param3"]=${paramn['param3']},paramn["param4"]=${paramn['param4']}<br/>
                    <label class="label-success">${paramn['param3']},${paramn['param4']},${paramn['param5']!"missing param5"}</label>
                ${('</#macro>')?html}<br/>
                ${('<@test param1="abc" [param2="xx"] param3="333" param4="444"/>')}<br/>
                </#macro>
                <@test param1="abc"  param3="333" param4="444"/>
                </p>
            </li>
        </ul>
    <h3>#nested</h3>
    <ul class="list-group">
        <li class="list-group-item">
            <h4>与#macro结合使用</h4>
            <#macro  test param1="java">
                ${param1}
            <#nested param1,"默认参数"/>
            </#macro>
            <@test param1="java";var1,var2>
              var1=${var1} ,var2=${var2}
            </@test><br/>
            <@test param1="python";var1>
                var1=${var1}
            </@test>
            <p class="label-success">
               ${('<#macro  test param1="java">')?html}<br/>
                ${r'${param1}'}<br/>
                   &nbsp; &nbsp; &nbsp;${('<#nested param1,"默认参数"/>')?html}
               ${('</#macro>')?html}<br/>
               ${('<@test param1="java";var1,var2>')?html}
                    var1=${r'${var1}'} ,var2= ${r'${var2}'}
                 ${('</@test>')?html}<br/>
                 ${('<@test param1="python";var1>')?html}
                  var1= ${r'${var1}'}
                 ${('</@test>')?html}
            </p>
        </li>
        <h3>#function</h3>
        <ul class="list-group">
            <li class="list-group-item">
                <h4>function</h4>
            <#function add param1 param2>
                <#return param1+param2>
            </#function>
                <@test add(1,2)></@test>
                <p class="label-success">
                ${('<#function add param1 param2>')?html}<br/>
                &nbsp;&nbsp;${('<#return param1+param2>')?html}<br/>
                ${('</#function>')?html}<br/>
                ${('<@test add(1,2)></@test>')?html}
                </p>
            </li>
    </ul>
</div>