<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="./css/table.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="managerSidebar.jsp"/>

    <div class="h_main">
        <div class="header_main">
            <div class="search">
                <form action="">
                    <input
                            type="text"
                            name="search"
                            id="search"
                            placeholder="用户搜索"
                    />
                    <button class="iconfront">
                        <img src="./img/search.png" height="45px" alt="search"/>
                    </button>
                </form>
            </div>
        </div>
        <div class="m_main">
            <div class="tableBox">
                <table>
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>账号</th>
                        <th>密码</th>
                        <th>电话</th>
                        <th>邮箱</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < 25; i++){
                    %>
                    <tr>
                        <td>杨华杰</td>
                        <td>123456</td>
                        <td>789123</td>
                        <td>1912580369</td>
                        <td>123@qq.com</td>
                        <td>
                            <button class="edit">修改</button>&nbsp;&nbsp;
                            <button class="delete">删除</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
