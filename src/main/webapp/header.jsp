<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/16
  Time: 13:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/header.css">
<div class="user-header">
    <div class="logo-container">
        <img src="./img/Logo.png" alt="Logo"/>
        <c:choose>
            <c:when test="${empty param.title}">
                <span>图书销售系统</span>
            </c:when>
            <c:otherwise>
                <span>${param.title}</span>
            </c:otherwise>
        </c:choose>
    </div>
</div>
