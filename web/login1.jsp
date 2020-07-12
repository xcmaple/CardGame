<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/12
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面（一）</title>
</head>
<style>
    body{
        text-align: center;
        background: #f4fff5;
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
<body>
<a href="#">
    <img src="https://i01piccdn.sogoucdn.com/247707e920c0fa10"
         alt="精美纸牌图片">
</a>
<div type="center">
    <form action="checkingname.jsp" method="post">
        <h1>
            请登录您的账号：
        </h1>
        <h2>
            <label>
                YourName：</label><input type="text" name="uname" placeholder="tom"/>
        </h2>
        <h2>
            <label>Pass_Word：</label><input type="password" name="pwd" placeholder="123"/>
        </h2>
        <p>
            </label>
            <button class="btn btn-block btn-primary"><a href="http://localhost:8080/CardGame/register.jsp">请点击这儿注册</a></button>
        </p>
    </form>
</div>
</html>

