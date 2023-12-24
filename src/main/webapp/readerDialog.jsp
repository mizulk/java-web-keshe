<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/19
  Time: 1:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="css/modifyDialog.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<c:if test="${param.mode eq  '1'}">
    <script type="text/javascript" src="./js/modifyReaderDialog.js"></script>
</c:if>
<body>
<div class="dialog-reader-wrapper" style="display: none">
    <div class="dialog-main">
        <h2 class="dialog-title">${param.title}</h2>
        <form action="" method="post" onsubmit="return false;" id="dialog-reader-form">
        <span>账号:</span
        ><input
                id="dialog-reader-account"
                type="text"
                name="account"
                placeholder="请输入账号"
                required
                pattern=".{1,20}"
        />
            <span>密码</span
            ><input
                id="dialog-reader-password"
                type="password"
                name="password"
                placeholder="请输入密码6~20位"
                required
                pattern=".{6,20}"
        />
            <span>用户名:</span
            ><input
                id="dialog-reader-name"
                type="text"
                name="name"
                placeholder="请输入用户名1~20位"
                required
                pattern=".{1,20}"
        />
            <span>手机号:</span
            ><input
                id="dialog-reader-tel"
                type="tel"
                name="tel"
                placeholder="请输入手机号"
                required
                pattern="\d{11}"
        />
            <span>邮箱:</span
            ><input
                id="dialog-reader-email"
                type="email"
                name="email"
                placeholder="xxx@xxx.com"
                required
        />
            <span>备注:</span
            ><input
                id="dialog-reader-notes"
                type="text"
                name="notes"
        />
        </form>
        <div class="dialog-btn-group">
            <div class="btn btn-normal" id="dialog-reader-cancel">取消</div>
            <div class="btn btn-primary" id="dialog-reader-confirm">确认</div>
        </div>
    </div>
</div>
</body>
</html>
