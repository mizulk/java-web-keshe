<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/12
  Time: 21:33
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎注册</title>
    <link rel="stylesheet" href="./css/background.css">
    <link rel="stylesheet" href="./css/register.css">
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/axios-1.6.2.min.js"></script>
    <script type="text/javascript" src="./js/register.js"></script>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:include page="logo.jsp"/>
<jsp:include page="dialog.jsp">
    <jsp:param name="showImmediately" value="false"/>
    <jsp:param name="title" value="提示"/>
</jsp:include>

<div class="bg">
    <div class="center">
        <div class="card-image">
            <img src="./img/reg.jpg" style="width: 354px" alt="reg.png"/>
        </div>
        <div class="card-right">
            <div class="container">
                <form action="" method="post" onsubmit="return registerCheck(this)">
                    <h3 class="title">用户注册</h3>
                    <span class="form-label">账号</span
                    ><input type="text" name="username" required autocomplete="off" placeholder="1~20长度的的账户"/>
                    <span class="form-label">手机号</span
                    ><input type="tel" name="tel" required pattern="\d{11}" autocomplete="off" placeholder="请输入你的手机号"/>
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
