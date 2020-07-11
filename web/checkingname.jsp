<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String uname= request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    boolean flag=false;
    if(uname.equals("tom")){
        flag=true;
    }
    if(uname.equals("tim")){
        flag=true;
    }
    if(uname.equals("tomy")){
        flag=true;
    }
    if(flag){
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }else{
        request.getSession().setAttribute("mrgss", "无法识别您的用户名，请您注册");
        response.sendRedirect("register.jsp");
    }
%>
