<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String uname= request.getParameter("uname");
    String pwd=request.getParameter("pwd");int flag=5;
    if(uname.equals("tom")&&pwd.equals("123456")){
        flag=6;
    }
    if(uname.equals("tim")&&pwd.equals("456123")){
        flag=6;
    }
    if(uname.equals("tomy")&&pwd.equals("654321")){
        flag=6;
    }
    if(flag==6){
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else if(flag==5){
        request.getSession().setAttribute("mrgss1", "你的输入有误请你重新输入");
        response.sendRedirect("login2.jsp");
    }
%>
