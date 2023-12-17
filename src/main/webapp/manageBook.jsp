<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理</title>
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
                            placeholder="图书搜索"
                    />
                    <button class="iconfront">
                        <img src="./img/search.png" height="45px" alt=""/>
                    </button>
                </form>
            </div>
        </div>
        <div class="m_main">
            <div class="tableBox">
                <table>
                    <thead>
                    <tr>
                        <th>图书名称</th>
                        <th>图书编号</th>
                        <th>图书类别</th>
                        <th>图书价格</th>
                        <th>出版社</th>
                        <th>数量</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < 25; i++){
                    %>
                    <tr>
                        <td>小王子</td>
                        <td>123456</td>
                        <td>文学类</td>
                        <td>15</td>
                        <td>高等教育出版社</td>
                        <td>123</td>
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
