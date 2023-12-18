<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 2:32
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./css/bookkinds.css">
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="js/showBookDialog.js"></script>
</head>
<body>
<div id="user-id" style="display: none" data-readerid="${sessionScope.get("reader").getId()}"></div>
<jsp:include page="bookDialog.jsp"/>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="${requestScope.type}"/>
        <jsp:param name="activeMenu" value="1"/>
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
                        <img src="./img/search.png" height="45px"/>
                    </button>
                </form>
            </div>
        </div>

        <div style="overflow-y: scroll; overflow-x: hidden">
            <div class="adv3 main">${requestScope.type}</div>
            <div class="M-main">
                <c:if test="${requestScope.books.size() != 0}">
                    <div class="adv2 main" style="margin-top: 10px">
                        <c:forEach items="${requestScope.books}" var="book">
                            <div class="book" data-id="${book.getId()}">
                                <img src="./img/books/${book.getPath()}" alt="book">
                                <div class="book-info">
                                    <h2 class=".book-name">
                                            ${book.getBookName()}
                                    </h2>
                                    <div class="book-grid">
                                        <div class="book-price">${book.getPrice()}￥</div>
                                        <div class="publisher">${book.getPublisher()}</div>
                                        <div class="book-author">${book.getAuthor()}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </c:if>
                <c:if test="${requestScope.books.size() eq 0}">
                    <h1 style="flex-grow: 1">
                        未找到相应的图书
                    </h1>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
