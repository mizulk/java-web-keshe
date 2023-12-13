<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/12
  Time: 20:16
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/background.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<jsp:include page="logo.jsp"/>

<div class="bg">
    <div class="center">
        <div class="card-right">
            <div class="container">
                <form action="" method="post" onsubmit="return loginCheck(this)">
                    <h3 class="title">用户登录</h3>
                    <span class="form-label">账号</span
                    ><input type="text" name="username" required autocomplete="off" pattern=".{1,20}"
                            placeholder="请输入你的账号"/>
                    <span class="form-label">密码</span
                    ><input type="password" name="password" required pattern=".{6,20}" placeholder="请输入你的密码"/>
                    <span class="form-label">用户类型</span
                    ><select name="type" class="user-list">
                    <option value="0">请选择用户类型</option>
                    <option value="1">管理员</option>
                    <option value="2">用户</option>
                </select>
                    <input class="login-btn" type="submit"/>
                    <div class="link">
                        没有账户？<a href="register.jsp">立即注册</a>
                    </div>
                </form>
            </div>
        </div>
        <div class="card-image">
            <img src="./img/reg.jpg" style="width: 354px"/>
        </div>
    </div>
</div>
</body>
</html>
