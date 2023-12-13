<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/13
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .logo {
            position: absolute;
            top: 10px;
            left: 10px;
            display: flex;
            align-items: center;
        }

        .logo > img {
            width: 100px;
            border-radius: 50%;
        }

        .logo > span {
            margin-left: 16px;
            font-size: 28px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="logo">
    <img src="./img/Logo.png" alt="logo-image"/>
    <span>图书管理系统</span>
</div>
</body>
</html>
