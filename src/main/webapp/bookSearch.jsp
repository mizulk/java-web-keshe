<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>图书检索结果</title>
    <link rel="stylesheet" href="./css/table.css">
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/bookSearch.js"></script>
</head>
<body>
<div id="user-id" style="display: none" data-readerid="${sessionScope.get("reader").getId()}"></div>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="文学类"/>
    </jsp:include>

    <div class="h_main">
        <div class="header_main">
            <div class="search">
                <form action="searchBook">
                    <input type="text" name="search" id="search" placeholder="图书搜索"/>
                    <button class="iconfront"><img src="./img/search.png" height="45px" alt=""></button>
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
                    <c:forEach items="${requestScope.books}" var="book">
                        <tr>
                            <td>${book.getBookName()}</td>
                            <td>${book.getId()}</td>
                            <td>${book.getBookType()}</td>
                            <td>${book.getPrice()}</td>
                            <td>${book.getPublisher()}</td>
                            <td>${book.getRepertory()}</td>
                            <td>
                                <button class="purchase" data-id="${book.getId()}">购买</button>&nbsp;&nbsp;
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
