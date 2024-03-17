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
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/readerModify.js"></script>
</head>
<body>

<jsp:include page="dialog.jsp">
    <jsp:param name="showImmediately" value="false"/>
    <jsp:param name="title" value="消息"/>
</jsp:include>

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
                    <form action="modifyReader" method="post" onsubmit="return false;">
                        <h2 class="title">账号修改</h2>
                        <span>账号</span
                        ><input
                            id="reader-modify-account"
                            type="text"
                            name="account"
                            placeholder="请输入账号"
                            value="${sessionScope.get("reader").getAccount()}"
                            readonly
                    />
                        <span>用户名</span
                        ><input
                            id="reader-modify-name"
                            type="text"
                            name="name"
                            placeholder="请输入用户名1~20位(必填)"
                            value="${sessionScope.get("reader").getName()}"
                            required
                    />
                        <span>旧密码</span
                        ><input
                            id="reader-modify-oldpassword"
                            type="password"
                            name="oldpassword"
                            placeholder="请输入旧密码(必填)"
                            pattern=".{6,20}"
                            required
                    />
                        <span>手机号</span
                        ><input
                            id="reader-modify-tel"
                            type="tel"
                            name="tel"
                            placeholder="请输入手机号"
                            value="${sessionScope.get("reader").getTelephone()}"
                            required
                            pattern="\d{11}"
                    />
                        <span>新密码</span
                        ><input
                            id="reader-modify-newpassword"
                            type="password"
                            name="newpassword"
                            placeholder="请输入新密码6~20位(可选)"
                            pattern=".{6,20}"
                    />
                        <span>确认密码</span
                        ><input
                            id="reader-modify-confirmpsw"
                            type="password"
                            name="confirmpsw"
                            placeholder="请再输入新密码(可选)"
                            pattern=".{6,20}"
                    />
                        <span>邮箱</span
                        ><input
                            id="reader-modify-email"
                            type="email"
                            name="email"
                            placeholder="xxx@xxx.com(可选)"
                            value="${sessionScope.get("reader").getEMail()}"
                    />
                        <span>备注</span
                        ><input
                            id="reader-modify-notes"
                            type="text"
                            name="notes"
                            value="${sessionScope.get("reader").getRemark()}"
                            readonly
                    />
                        <span></span><input type="submit" id="reader-modify-submit"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
