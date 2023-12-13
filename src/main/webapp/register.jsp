<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/12
  Time: 21:33
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/background.css">
    <link rel="stylesheet" href="css/register.css">
</head>
<body>
<jsp:include page="logo.jsp"/>

<div class="bg">
    <div class="center">
        <div class="card-image">
            <img src="./img/reg.jpg" style="width: 354px"/>
        </div>
        <div class="card-right">
            <div class="container">
                <form action="" method="post" onsubmit="return registerCheck(this)">
                    <h3 class="title">用户注册</h3>
                    <span class="form-label">账号</span
                    ><input type="text" name="username" required autocomplete="off" placeholder="1~20长度的的账户"/>
                    <span class="form-label">手机号</span
                    ><input type="tel" name="tel" required autocomplete="off" placeholder="请输入你的手机号"/>
                    <span class="form-label">密码</span
                    ><input type="password" name="password" required pattern=".{6,20}" placeholder="6~20位密码"/>
                    <span class="form-label">确认密码</span
                    ><input type="password" name="confirmpsw" required pattern=".{6,20}" placeholder="6~20位密码"/>
                    <input class="login-btn" type="submit"/>
                    <div class="link">
                        已有账户？<a href="login.jsp">前往登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
