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
<script type="text/javascript" src="<%=basePath%>js/sickroom.js"></script>
<table id="dg" title="住院办理" class="easyui-datagrid" style="width:100%; height: 585px"
       url="<%=basePath%>stayhistory/roomlist" toolbar="#toolbar" pagination="true" rownumbers="true"
       fitcolumns="true" singleselect="true">
    <thead>
    <tr>
        <th field="srid" width="50">
            病房号
        </th>
        <th field="did" width="50">
            科室号
        </th>
        <th field="srAllcount" width="50">
            病床总数
        </th>
        <th field="srcount" width="50">
            病床数量
        </th>
        <th field="srprice" width="50">
            价格
        </th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="killroom()"
       plain="true">住院登记</a>
      <form id="findm">
        <input type="text" name="seachname" >
        <input type="button" id="schbtn" value="搜索"/>
    </form>
</div>
<div id="dlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px;"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">
        住院
    </div>
    <form id="fm"  method="post">
        <div class="fitem">
                患者姓名：<input type="text" name="pb.pbname" id="pb.pbname"
                            class="easyui-validatebox" required="true">
            </div>
        <div class="fitem">
            床位号：<select name="sbname" id="sbname">
            <option value="0">请选择</option>

        </select>
            </div>
            <div class="fitem">
                消费类别：<input type="text" id="charge.cname" value="病床费" name="charge.cname"
                           class="easyui-validatebox" required="true" ／>
            </div>
        <div id="price">

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