<%@ page import="java.util.LinkedHashMap" %><%--
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
        <%
            String activeName = request.getParameter("activeName");
            String activeMenu = request.getParameter("activeMenu");
            if (activeMenu == null) activeMenu = "0";
            LinkedHashMap<String, String> subMap1 = new LinkedHashMap<>();
            subMap1.put("文学类", "bookType?type=文学类");
            subMap1.put("历史类", "bookType?type=历史类");
            subMap1.put("艺术类", "bookType?type=艺术类");
            subMap1.put("外语类", "bookType?type=外语类");

            LinkedHashMap<String, String> subMap2 = new LinkedHashMap<>();
            subMap2.put("我的订单", "readerOrder");
            subMap2.put("修改资料", "readerModify.jsp");
            subMap2.put("用户退出", "readerLogout");
        %>
        <li class="menu-item<%=activeName.equals("首页")?" active":""%>" data-href="readerIndex">
            <h>首页</h>
        </li>
        <li class="menu<%=activeMenu.equals("1")?" active":""%>">
            <h>图书类别<span class="menu-icon">></span></h>
            <div class="menu-content" style="<%=activeMenu.equals("1")?"":"display:none"%>">
                <%for (String k : subMap1.keySet()) {%>
                <h5 class="menu-item <%=activeName.equals(k) ? " active" : ""%>" data-href="<%=subMap1.get(k)%>">
                    <%=k%>
                </h5>
                <%}%>
            </div>
        </li>
        <li class="menu<%=activeMenu.equals("2")?" active":""%>">
            <h>我的账户<span class="menu-icon">></span></h>
            <div class="menu-content" style="<%=activeMenu.equals("2")?"":"display:none"%>">
                <%for (String k : subMap2.keySet()) {%>
                <h5 class="menu-item <%=activeName.equals(k) ? " active" : ""%>" data-href="<%=subMap2.get(k)%>">
                    <%=k%>
                </h5>
                <%}%>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
