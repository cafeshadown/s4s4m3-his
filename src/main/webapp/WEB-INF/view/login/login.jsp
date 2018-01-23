<%--
  Created by IntelliJ IDEA.
  User: mic-zhouc
  Date: 2017/8/9
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
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
</head>
<body>
 <form action="<%=basePath%>index/logins" method="post">
     用户名：<input type="text" name="ename">
     密码：<input type="text" name="password">
     <input type="submit">
 </form>
</body>
</html>
