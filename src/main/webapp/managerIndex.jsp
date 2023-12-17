<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员主页</title>
    <link rel="stylesheet" href="./css/managerindex.css"/>
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
            <div class="adv2">
                <div>图片</div>
                <div class="add">
                    <h2>用户添加</h2>
                    <div><img src="./img/Add.png" alt=""/></div>
                </div>
                <div class="add">
                    <h2>图书添加</h2>
                    <div><img src="./img/Add.png" alt=""/></div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
