<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户首页</title>
    <link rel="stylesheet" href="./css/index.css"/>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="首页"/>
        <jsp:param name="activeMenu" value="0"/>
    </jsp:include>
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
                        <img src="./img/search.png" height="45px" alt="search"/>
                    </button>
                </form>
            </div>
        </div>
        <div class="adv2 main">
            <div>adv2_1</div>
            <div>adv2_2</div>
            <div>adv2_3</div>
            <div>adv2_4</div>
            <div>adv2_5</div>
            <div>adv2_6</div>
            <div>adv2_7</div>
            <div>adv2_8</div>
            <div>adv2_9</div>
            <div>adv2_10</div>
            <div>adv2_11</div>
        </div>
    </div>
</div>
</div>
</body>
</html>
