<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
        <base href="<%=basePath%>">
        <title>登陆成功</title>
    <style>
        body{
            text-align: center;
            background: #dbcfd5;
        }
    </style>
      </head>
<body>
<a href="#">
    <img class="smaller-image thick-green-border"
         src="https://i03piccdn.sogoucdn.com/1ab69c478b016bb3"
         alt="斗地主图片">
</a>
   <p>欢迎<%=request.getParameter("uname") %>登录！</p>
<button class="btn btn-block btn-primary">
    <a href="http://localhost:8080/CardGame/land.jsp">请点击这儿开始游戏</a></button>
</div>
</body>
</html>



