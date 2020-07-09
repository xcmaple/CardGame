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
<style>
    body{
        text-align: center;
    }
    a{
        font-size: 25px;
        color:blue;
        font-family:Monospace;
    }
    h1{
        color:#5f6eff;
    }
    h2{
        color: rgba(64, 255, 209, 0.97);
    }

</style>
<body style="background:url(https://i01piccdn.sogoucdn.com/247707e920c0fa10)">
<div style="center">
    <form >
    <h1>
        请登录您的账号：
    </h1>
    <h2 style="center">YourName<input type="text" placeholder="tom" required></h2>
    <h2 style="center">Pass_Word<input type="text" placeholder="123" required></h2>
        <button class="btn btn-block btn-primary"><a href="#">登 录</a></button>
        <button class="btn btn-block btn-danger"><a href="#" style="color:red">重 置</a></button>
        <button class="btn btn-block btn-info"><a href="#" style="color:#9eb9ae" style="font-size: 20px">注册新账号</a></button>
    </form>
</div>
</body>
</html>




