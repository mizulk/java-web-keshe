<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 15:49
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读者信息修改</title>
    <link rel="stylesheet" href="./css/modify.css"/>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="修改资料"/>
        <jsp:param name="activeMenu" value="2"/>
    </jsp:include>

    <div class="h_main">
        <div class="m_main">
            <div class="right"></div>
            <div class="left">
                <div class="modify-container">
                    <form>
                        <h2 class="title">账号修改</h2>
                        <span>账号</span
                        ><input type="text" name="account" placeholder="请输入账号"/>
                        <span>用户名</span
                        ><input
                            type="text"
                            name="username"
                            placeholder="请输入用户名1~20位"
                    />
                        <span>旧密码</span
                        ><input
                            type="password"
                            name="oldpassword"
                            placeholder="请输入旧密码"
                    />
                        <span>手机号</span
                        ><input type="tel" name="tel" placeholder="请输入手机号"/>
                        <span>新密码</span
                        ><input
                            type="password"
                            name="newpassword"
                            placeholder="请输入新密码6~20位"
                    />
                        <span>确认密码</span
                        ><input
                            type="password"
                            name="confirmpsw"
                            placeholder="请再输入新密码"
                    />
                        <span>邮箱</span
                        ><input type="email" name="email" placeholder="xxx@xxx.com"/>
                        <span>备注</span><input type="notes" name="notes"/>
                        <span></span><input type="submit"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
