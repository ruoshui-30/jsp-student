<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>登陆页面</title>
<link rel="stylesheet" href="./css/login.css">
</head>

<body>
<div class="box">
  <form autocomplete="off">
    <h2>登陆</h2>
      <div class="inputBox">
        <input type="text" required="required" name="username">
        <span>账号</span>
        <i></i>
      </div>
      <div class="inputBox">
        <input type="password" required="required" name="password">
        <span>密码</span>
        <i></i>
      </div>
      <div class="links">
        <a href="#">忘记密码 ?</a>
        <!-- 点击a标签注册跳转register页面 -->
        <a href="register.jsp">注册</a>
      </div>
      <input type="submit" value="登陆">
      <!-- 用户登录功能账号admin,密码123456，登陆成功跳转student.jsp -->
  </form>
  <%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  if(username != null && password != null){
    if(username.equals("admin") && password.equals("123456")){
      session.setAttribute("username", username);
      response.sendRedirect("student.jsp");
    }else{
      out.println("<script>alert('账号或密码错误！')</script>");
    }
  }
%>
</div>
</body>

</html>
