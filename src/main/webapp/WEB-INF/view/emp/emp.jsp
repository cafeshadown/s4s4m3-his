<%--
  Created by IntelliJ IDEA.
  User: mic-zhouc
  Date: 2017/7/20d 0019
  Time: 22：22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!-- 引入JQuery -->

    <style>
        body,html{
            height: 100%;
            margin: 0px;
        }
        .model-container{
            height: 100%;
            width: 100%;
            display: none;
        }
        form{
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="bu">
</div>
<div>
    <form id="fm">
        <input type="text" name="seachname" >
        <input type="button" id="schbtn" value="搜索"/>
    </form>
</div>
<div class="model-container" id="window">

        <div class="model-title">
            搜索结果
        </div>
        <table id="datagrid"  >
            <caption>查询结果</caption>
            <tr>
                <td>姓名</td>
                <td>年龄</td>
                <td>描述</td>
                <td>手机号</td>
                <td>操作</td>
            </tr>
            <tr>
                <td>1</td>
                <td>zhangsan</td>
                <td>2017-01-01 20:03:02</td>
                <td><a href="">删除</a></td>
                <td><a href="">编辑</a></td>
            </tr>
        </table>
        <div>
            <table id="datagrid1">

            </table>
            <input type="button" id="clobtn" value="关闭">
        </div>


</div>

<script src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
<script>
    var startpage =1;
    function list(i) {
        i=startpage;
        $('#datagrid tr:not(:eq(0))').remove();
        $.post("<%=basePath%>emplist?startpage="+i,$('#fm').serialize(), function (data) {
            var dg = document.getElementById("datagrid");
            for (var i = 0; i < data.length; i++) {
                var row = data[i];
                var tr = "<tr>";
                tr += "<td>" + (i + 1) + "</td>";
                tr += "<td>" + row.ename + "</td>";
                tr += "<td>" + row.egender + "</td>";
                tr += "<td>" + row.eage + "</td>";
                tr += "<td>" + row.ephone + "</td>";

                tr += "<td><a href=<%=basePath%>delete?eid=" + row.eid+" >删除</a>";
                tr += "<a href=\"../patientServlet?flag=load&id=" + row.eid + "\">编辑</a>";
                tr += "</td>";
                tr += "</tr>";
                dg.innerHTML += tr;
            }
        }, 'json');
    }

    $(function () {
        $('#schbtn').click(function () {
            page();
            $('#window').show();

        });
        $('#clobtn').click(function () {
            startpage=1;
            $('#window').hide();
        })
    })
    var page1=0;
    function page() {
        $.ajaxSetup({
            async : false
        });
        $.post("<%=basePath%>count",$('#fm').serialize(), function (data) {
            page1 =data;
        }, 'json');
        var dg = document.getElementById("datagrid1");
        var tr = "<tr>";
        if (startpage==1&&page1>=1) {
            $("#datagrid1").empty();
            list(1);
            tr += "<td><a href=\"javascript:pageadd()\">下一页</a>";
            tr += "</td>";
            tr += "</tr>";
            dg.innerHTML += tr;
        }
        else if(startpage>1&&startpage<page1) {
            $("#datagrid1").empty();
            tr += "<td><a href=\"javascript:pagea()\">上一页</a>";
            tr += "</td>";
            tr += "<td><a href=\"javascript:pageadd()\">下一页</a>";
            tr += "</tr>";
            dg.innerHTML += tr;
        }
        else if (startpage>=1&&page1==startpage){
            $("#datagrid1").empty();
            tr += "<td><a href=\"javascript:pagea()\">上一页</a>";
            tr += "</td>";
            tr += "</tr>";
            dg.innerHTML += tr;
        }
    }
    function pageadd() {
        startpage =startpage+1;
        list(startpage);
        page();
    }
    function pagea() {
        startpage =startpage-1;
        if(startpage!=1){
            list(startpage);
        }
        page();
    }


</script>
</body>
</html>
