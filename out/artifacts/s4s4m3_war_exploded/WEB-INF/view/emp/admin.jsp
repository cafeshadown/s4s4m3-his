<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page language="java" import="com.oracle.entity.Employee" %>
<%@ page import="com.oracle.entity.Employee" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

         <title>CafeShadow </title>
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
         <script type="text/javascript">
              $(function(){
                      //画面加载完成之后就调用layout()方法将body变成easy的layout
                      $('#easyUILayoutBody').layout();
                  });
          </script>
       </head>
   <!--给body指定class属性指定easy的easyui-layout样式，这样就可以 使用body创建easyui的layout -->
<body class="easyui-layout">
<div region="north" border="true" split="true" style="overflow: hidden; height: 80px;">
    <div class="top-bg">
        <h2>Cafeshadow HIS</h2>
        <div>
       ${emp.ename}
</div>
    </div>
</div>
<div region="south" border="true" split="true" style="overflow: hidden; height: 40px;">
    <div class="footer">开发人员：<a href="#">周超</a></div>
</div>
<div region="west" split="true" title="导航菜单" style="width: 200px;">
        <a href="<%=basePath%>emp/emp" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:190px">员工管理</a>
        <a href="<%=basePath%>emp/employee" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-man'" style="width:190px">人事管理</a>
    <a href="<%=basePath%>pb/patient" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:190px">挂号缴费</a>
    <a href="<%=basePath%>pb/lookill" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:190px">门诊缴费</a>
    <a href="<%=basePath%>recipe/doctor" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:190px">就诊管理</a>
    <a href="<%=basePath%>pb/pay" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:190px">消费查询</a>
    <a href="<%=basePath%>stayhistory/stayroom" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:190px">病房管理</a>
    <a href="<%=basePath%>stayhistory/stay" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:190px">住院记录</a>
    <a href="<%=basePath%>medicine/show" target="emp" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:190px">药房管理</a>
</div>

<div id="mainPanle" region="center" style="overflow: hidden;">
    <iframe  name="emp" width="100%" height="100%" frameborder="0" scrolling="auto">
    </iframe>
</div>


</body>
</html>