<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/18
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./css/dialog.css">
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/error.js"></script>
</head>
<body>
<jsp:include page="logo.jsp"/>
<div class="dialog-wrapper">
    <h2 class="dialog-title">错误</h2>
    <p class="dialog-content">
        ${requestScope.msg}
    </p>
    <div class="dialog-btn-group">
        <div class="btn btn-primary" id="dialog-confirm">返回上一级</div>
    </div>
</div>

</body>
</html>
