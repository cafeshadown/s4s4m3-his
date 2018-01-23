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
<script type="text/javascript" src="<%=basePath%>js/lookill.js"></script>
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
                              onclick="edituser()" plain="true">住院缴费</a>
    <a href="javascript:void(0)"class="easyui-linkbutton"   iconcls="icon-add"  onclick="medicinepay()" plain="true">购药缴费</a>
    <form id="findm">
        <input type="text" name="seachname" >
        <input type="button" id="schbtn" value="搜索"/>
    </form>
</div>

<div id="dlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px;"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">
        购药缴费
    </div>
    <table id="datagrid"  >
        <caption>查询结果</caption>
        <tr>
            <tb>序号</tb>
            <td>患者编号</td>
            <td>药品名</td>
            <td>药品数量</td>
            <td>药品单位</td>
            <td>药品价格</td>
        </tr>

    </table>
    <a href="javascript:void(0)"  onclick="saveuser()" id="adfs">统计</a>

</div>


<div id="dlg2" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px;"
     closed="true" buttons="#dlg-buttons2">
    <div class="ftitle">
        信息编辑
    </div>
    <form id="fm2"  method="post">

        <div class="fitem">
         类型   ：<input type="text" id="cname" value="住院" name="cname"
                       class="easyui-validatebox" required="true">
        </div>
        <div>

            押金：<input type="text" id="cprice"  name="cprice"
                       class="easyui-validatebox" required="true">

        </div>


    </form>
</div>
<div id="dlg-buttons2">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="savepay()" iconcls="icon-save">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg2').dialog('close')"
       iconcls="icon-cancel">取消</a>
</div>
<script>
    function saveuser() {
        alert('alersdf');
        var row = $("#dg").datagrid("getSelected");
        var result;
$.ajaxSetup({
    async:false
})
        $.post('tongji',{pbid:row.pbid},function (resul) {
            result=resul
        });
       alert(result)
        $.messager.confirm('Confirm', '总金额：'+result, function (r) {
            if (r) {
                $.post('paymedince', {pbid: row.pbid,ccprice:result}, function (result) {
                    $('#dg').datagrid('reload');
                    if (result.success) {
                        alert("缴费成功");
                    } else {
                        $.messager.show({   // show error message
                            title: '失败',
                            msg: result.errorMsg
                        });
                    }
                }, 'json');
            }
        });

    }
</script>>
</body>
</html>