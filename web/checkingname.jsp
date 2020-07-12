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
    int flag1=1,flag2=2;
        if((uname.equals("tom")&&pwd.equals("123456"))||(uname.equals("tim")&&pwd.equals("456123"))||(uname.equals("tomy")&&pwd.equals("654321"))){
            flag1=0;
        }
        else if(uname.equals("tom")||uname.equals("tim")||uname.equals("tomy"))
        {
            flag2=1;flag1=5;
        }
        if(flag1==0&&flag2==2){
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }
     else if(flag2==1&&flag1==5){
            request.getSession().setAttribute("mrgss1", "密码错误，请您重新输入");
            response.sendRedirect("login.jsp");
    }else if(flag1==1&&flag2==2){
        request.getSession().setAttribute("mrgss", "用户名暂未注册，请您注册");
        response.sendRedirect("login1.jsp");
    }
%>
