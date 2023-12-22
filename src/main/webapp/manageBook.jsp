<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>图书管理</title>
    <link rel="stylesheet" href="./css/table.css"/>
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/manageBook.js"></script>
</head>
<body>

<jsp:include page="modifyBookDialog.jsp">
    <jsp:param name="title" value="修改图书信息"/>
    <jsp:param name="mode" value="1"/>
</jsp:include>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="managerSidebar.jsp">
        <jsp:param name="activeName" value="图书管理"/>
    </jsp:include>

    <div class="h_main">
        <div class="header_main">
            <div class="search">
                <form action="searchBook">
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
                        <th>购买数量</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.books}" var="book">
                        <tr class="book-${book.getId()}">
                            <td>${book.getBookName()}</td>
                            <td>${book.getId()}</td>
                            <td>${book.getBookType()}</td>
                            <td>${book.getPrice()}</td>
                            <td>${book.getPublisher()}</td>
                            <td>${book.getBought()}</td>
                            <td>
                                <button class="edit" data-id="${book.getId()}">修改</button>&nbsp;&nbsp;
                                <button class="delete" data-id="${book.getId()}">删除</button>
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
