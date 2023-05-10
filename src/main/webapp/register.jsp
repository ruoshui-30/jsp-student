<!-- 注册页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link rel="stylesheet" href="./css/register.css">
</head>

<body>
    <div class="box">
        <form autocomplete="off">
            <h2>注册</h2>
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
            <div class="inputBox">
                <input type="password" required="required" name="password">
                <span>确认密码</span>
                <i></i>
            </div>
            <div class="links">
                <a href="#">忘记密码 ?</a>
                <a href="#">登陆</a>
            </div>
            <input type="submit" value="注册">
            <!-- 用户注册功能，注册成功跳转login.jsp -->

        </form>
    </div>
</html>