<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/16
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<link rel="stylesheet" href="css/sidebar.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="js/sidebar.js"></script>
<div id="sidebar">
    <ul class="nav">
        <li class="menu-item">
            <h>首页</h>
        </li>
        <li class="menu">
            <h>图书类别<span class="menu-icon">></span></h>
            <div class="menu-content">
                <h5 class="menu-item">文学类</h5>
                <h5 class="menu-item">历史类</h5>
                <h5 class="menu-item">艺术类</h5>
                <h5 class="menu-item">外语类</h5>
            </div>
        </li>
        <li class="menu">
            <h>我的账户<span class="menu-icon">></span></h>
            <div class="menu-content">
                <h5 class="menu-item">我的订单</h5>
                <h5 class="menu-item">修改资料</h5>
                <h5 class="menu-item"><a href="./login.jsp">用户退出</a></h5>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
