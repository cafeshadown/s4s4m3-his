<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <title>通过JavaScript来创建EasyUI布局</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!-- 引入JQuery -->
    <script type="text/javascript" src="<%=basePath%>easyUI/jquery.min.js"></script>
    <!-- 引入EasyUI -->
    <script type="text/javascript" src="<%=basePath%>easyUI/jquery.easyui.min.js"></script>
    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="<%=basePath%>easyUI/locale/easyui-lang-zh_CN.js"></script>
    <!-- 引入EasyUI的样式文件-->
    <link rel="stylesheet" href="<%=basePath%>easyUI/themes/default/easyui.css" type="text/css"/>
    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet" href="<%=basePath%>easyUI/themes/icon.css" type="text/css"/>
</head>
<style type="text/css">
    #fm
    {
        margin: 0;
        padding: 10px 30px;
    }
    .ftitle
    {
        font-size: 14px;
        font-weight: bold;
        padding: 5px 0;
        margin-bottom: 10px;
        border-bottom: 1px solid #ccc;
    }
    .fitem
    {
        margin-bottom: 5px;
    }
    .fitem label
    {
        display: inline-block;
        width: 80px;
    }
</style>
<body>
<script type="text/javascript" src="<%=basePath%>js/pay.js"></script>
<table id="dg" title="消费查询" class="easyui-datagrid" style="width:100%; height: 585px"
       url="<%=basePath%>pb/paylist?seachname=" toolbar="#toolbar" pagination="true" rownumbers="true"
       fitcolumns="true" singleselect="true">
    <thead>
    <tr>
        <th field="cid" width="50">
            收费编号
        </th>
        <th field="pbid" width="50">
            患者编号
        </th>
        <th field="cname" width="50">
            收费名称
        </th>
        <th field="cprice" width="50">
            缴费金额
        </th>
        <th field="ctype" width="50">
            收费状态
        </th>
        <th field="eid" width="50">
            受理员工号
        </th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="newuser()"
       plain="true">添加</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-edit"
       onclick="edituser()" plain="true">修改</a>
    <a href="javascript:void(0)"class="easyui-linkbutton"   iconcls="icon-remove"  onclick="destroyUser()" plain="true">删除</a>
    <form id="findm">
        <input type="text" name="seachname" >
        <input type="button" id="schbtn" value="搜索"/>
    </form>
</div>
<div id="dlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px;"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">
        信息编辑
    </div>
    <form id="fm"  method="post">
        <div class="fitem">
            员工姓名：<input type="text" name="ename" id="ename"
                        class="easyui-validatebox" required="true">
        </div>

        <div class="fitem">
            员工性别：<input type="radio" id="0" value="0" name="egender">男
            <input type="radio" id="1" value="1" name="egender">女
        </div>
        <div class="fitem">
            员工年龄：<input type="text" id="eage" name="eage"
                        class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            员工电话：<input type="text" id="ephone" name="ephone"
                        class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            登陆密码：<input type="text" id="password" name="password"
                        class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            身份证号：<input type="text" id="ecard" name="ecard"
                        class="easyui-validatebox" required="true">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="saveuser()" iconcls="icon-save">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg').dialog('close')"
       iconcls="icon-cancel">取消</a>
</div>


</body>
</html>