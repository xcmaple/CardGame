<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面（二）</title>
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
        color: rgba(6, 5, 5, 0.97);
    }
</style>
<body style="background:#bce3f2">
<a href="#">
    <img src="https://i01piccdn.sogoucdn.com/247707e920c0fa10"
         alt="精美纸牌图片">
</a>
<div type="center">
    <form action="checking.jsp" method="post">
        <h1>
            请登录您的账号：
        </h1>
        <h2>
            <label>YourName：</label><input type="text" name="uname" placeholder="tom" required/>
        </h2>
        <h2>
            <label>Pass_Word：</label><input type="password" name="pwd" placeholder="123" required/>
        </h2>
        <p>
            </label><input type="submit" value="登录"/>
        </p>
    </form>
</div>
    <%
  String str=(String)request.getSession().getAttribute("mrgss");
  if(str!=null){
    out.print(str);
  }
%>
</html>
