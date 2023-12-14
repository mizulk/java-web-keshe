<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/14
  Time: 10:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>dialog</title>
    <link rel="stylesheet" href="./css/dialog.css">
</head>
<body>
<div class="dialog">
    <h2 class="dialog-title">${param.title}</h2>
    <p class="dialog-content">
        ${param.content}
    </p>
    <div class="dialog-btn-group">
        <div class="btn btn-normal" onclick="${param.onCancel}">取消</div>
        <div class="btn btn-primary" onclick="${param.onConfirm}">确认</div>
    </div>
</div>
</body>
</html>
