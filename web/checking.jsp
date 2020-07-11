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
    String pwd=request.getParameter("pwd");
    boolean flag=false;
    if(uname.equals("tom")&&pwd.equals("123456")){
        flag=true;
    }
    if(uname.equals("tim")&&pwd.equals("456123")){
        flag=true;
    }
    if(uname.equals("tomy")&&pwd.equals("123456")){
        flag=true;
    }
    if(flag){
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else{
        request.getSession().setAttribute("mrgss", "你的输入有误请你重新输入");
        response.sendRedirect("index.jsp");
    }
%>
