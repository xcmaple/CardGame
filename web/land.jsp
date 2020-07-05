<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/5
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Land</title>
</head>
<body background="image/bg.jpg">
<div align="center" class="box">
    <head>
        请登录您的账号：
    </head>
    <form id="form"method="post" action="servlet/LoginServlet">
        UserName:<input type="text" value="${userName }" name="userName" id="userName"/><p/>
        PassWord:<input type="password" value="${password }" name="password" id="password"/><br/>
        <p/>
    </form>
    <a class="btn_style" id="btn_login"href="javascript:login()" >登陆</a>
    <a class="btn_style" id="btn_reset"href="javascript:reset()">重置</a>
    <br/>
    <font id="error"color="red">${error }</font>
</div>
</body>
</html>




