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
<script type="text/javascript" src="<%=basePath%>js/doctor.js"></script>
<table id="dg" title="缴费挂号" class="easyui-datagrid" style="width:100%; height: 585px"
       url="<%=basePath%>pb/pblist?seachname=" toolbar="#toolbar" pagination="true" rownumbers="true"
       fitcolumns="true" singleselect="true">
    <thead>
    <tr>
        <th field="pbid" width="50">
            患者编号
        </th>
        <th field="did" width="50">
            部门编号
        </th>
        <th field="pbage" width="50">
            年龄
        </th>
        <th field="pbname" width="50">
            姓名
        </th>
        <th field="pbgender" width="50">
        性别
    </th>
        <th field="pbtype" width="50">
            状态
        </th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add"
                              onclick="doctor()" plain="true">就诊</a>
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
    <input type="button" id="addrecipe" name="addrecipe" value="添加处方">
    <input type="button" id="addtr" name="addtr" value="添加行">
    <div id="saverecipe">
        <form  id="fm2" method="post">
            <table id="sa">
                <tr>
                    <td>药名</td>
                    <td>数量</td>
                    <td>单位</td>
                </tr>
                <tr>
                    <td><input type="text" name="mname" class="awesomplete" data-list=""></td>
                    <td><input type="text" name="mcount"></td>
                    <td><input type="text" name="runit"></td>
                </tr>
            </table>
            开方医生: <input type="text" id="rname" name="rname">
            <br>
        </form>
    </div>
</div>
<div id="dlg-buttons">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="savepay()" iconcls="icon-save">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg2').dialog('close')"
       iconcls="icon-cancel">取消</a>
</div>
<script>
    $(function () {
        $('#saverecipe').hide();
        $('#addrecipe').click(function () {
            $('#saverecipe').show();
        });
        $('#addtr').click(function () {
            var tr = " <tr>\n" +
                "            <td><input type=\"text\" name=\"mname\"></td>\n" +
                "            <td><input type=\"text\" name=\"mcount\"></td>\n" +
                "            <td><input type=\"text\" name=\"runit\"></td>\n" +
                "        </tr>";
            $('#sa').append(tr);
        })
    })
</script>
</body>
</html>