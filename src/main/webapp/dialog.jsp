<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/14
  Time: 10:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="./css/dialog.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/dialog.js"></script>
<body>
<div class="dialog"
        <c:if test="${not param.showImmediately}">
            style="display: none"
        </c:if>
>
    <h2 class="dialog-title">${param.title}</h2>
    <p class="dialog-content">
        ${param.content}
    </p>
    <div class="dialog-btn-group">
        <%--
        目前支持的点击事件：
             不写等于关闭当前对话框
            close:boolean   //是否在点击后关闭对话框
            href:string     //是否在点击按钮后跳转到指定的页面
        举例：
            <jsp:param name="onConfirm" value='{"close":true,"href":"register.jsp"}'/>
            点击后关闭对话框并跳转到register.jsp页面
        --%>
        <div class="btn btn-normal" id="dialog-cancel" data-value=${param.onCancel}>取消</div>
        <div class="btn btn-primary" id="dialog-confirm" data-value=${param.onConfirm}>确认</div>
    </div>
</div>
</body>
</html>
