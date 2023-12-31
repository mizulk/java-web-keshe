<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员主页</title>
    <link rel="stylesheet" href="./css/managerindex.css"/>
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="./js/managerIndex.js"></script>
</head>
<body>
<jsp:include page="modifyBookDialog.jsp">
    <jsp:param name="title" value="添加图书"/>
    <jsp:param name="mode" value="0"/>
</jsp:include>

<jsp:include page="readerDialog.jsp">
    <jsp:param name="title" value="添加读者"/>
    <jsp:param name="mode" value="0"/>
</jsp:include>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="managerSidebar.jsp">
        <jsp:param name="activeName" value="首页"/>
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
            <div class="adv2">
                <div></div>
                <div class="add">
                    <h2>用户添加</h2>
                    <div><img src="./img/Add.png" alt="" id="add-reader"/></div>
                </div>
                <div class="add">
                    <h2>图书添加</h2>
                    <div><img src="./img/Add.png" alt="" id="add-book"/></div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
