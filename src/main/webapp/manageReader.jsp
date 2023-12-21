<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="./css/table.css"/>
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/manageReader.js"></script>
</head>
<body>

<jsp:include page="readerDialog.jsp">
    <jsp:param name="title" value="修改读者信息"/>
</jsp:include>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="managerSidebar.jsp">
        <jsp:param name="activeName" value="用户管理"/>
    </jsp:include>

    <div class="h_main">
        <div class="header_main">
            <div class="search">
                <form action="searchBook">
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
                    <c:forEach items="${requestScope.readers}" var="reader">
                        <tr class="reader-${reader.getId()}">
                            <td>${reader.getName()}</td>
                            <td>${reader.getAccount()}</td>
                            <td>${reader.getPassword()}</td>
                            <td>${reader.getTelephone()}</td>
                            <td>${reader.getEMail()}</td>
                            <td>
                                <button class="edit" data-id="${reader.getId()}">修改</button>&nbsp;&nbsp;
                                <button class="delete" data-id="${reader.getId()}">删除</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
