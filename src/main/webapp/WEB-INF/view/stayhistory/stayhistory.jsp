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
    #fm2
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
<script type="text/javascript" src="<%=basePath%>js/stayhistory.js"></script>
<table id="dg" title="缴费挂号" class="easyui-datagrid" style="width:100%; height: 585px"
       url="<%=basePath%>stayhistory/historylist?seachname=" toolbar="#toolbar" pagination="true" rownumbers="true"
       fitcolumns="true" singleselect="true">
    <thead>
    <tr>
        <th field="pbid" width="50">
            患者编号
        </th>
        <th field="pbname" width="50">
           病人姓名
        </th>
        <th field="srid" width="50">
            病房
        </th>
        <th field="sbid" width="50">
            病床
        </th>
        <th field="shdate" width="50">
           入院时间
        </th>
        <th field="shOutdate" width="50">
            出院时间
        </th>



    </tr>
    </thead>
</table>
<div id="toolbar">

    <a href="javascript:void(0)"class="easyui-linkbutton"   iconcls="icon-add"  onclick="outroom()" plain="true">出院</a>
    <form id="findm">
        <input type="text" name="seachname" >
        <input type="button" id="schbtn" value="搜索"/>
    </form>
</div>


</body>
</html>