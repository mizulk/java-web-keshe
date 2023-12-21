<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 0:46
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.LinkedHashMap" %>
<html>
<body>
<link rel="stylesheet" href="./css/sidebar.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="js/sidebar.js"></script>
<div id="sidebar">
    <ul class="nav">

        <% LinkedHashMap<String, String> map = new LinkedHashMap<>();
            map.put("首页", "managerIndex.jsp");
            map.put("用户管理", "getAllReader");
            map.put("图书管理", "getAllBook");
            map.put("账号退出", "managerLogout");
            String activeName = request.getParameter("activeName");
            for (String k : map.keySet()) {%>
        <li class="menu-item<%=activeName.equals(k) ? " active" : ""%>" data-href="<%=map.get(k)%>">
            <h><%=k%></h>
        </li>
        <%}%>
    </ul>
</div>
</body>
</html>
