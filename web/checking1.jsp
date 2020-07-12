<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/12
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String uname= request.getParameter("uname");
    String pwd=request.getParameter("pwd");int flag3=0;
    if(uname.equals("tom")&&pwd.equals("123456")){
        flag3=1;
    }

    if(uname.equals("tim")&&pwd.equals("456123")){
        flag3=1;
    }
    if(uname.equals("tomy")&&pwd.equals("654321")){
        flag3=1;
    }

    if(flag3==1){
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else if(flag3==0){
        request.getSession().setAttribute("mrgss2", "你的输入有误请你重新输入");
        response.sendRedirect("login.jsp");
    }
%>