<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 2:32
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./css/bookkinds.css">
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="${param.search}"/>
        <jsp:param name="activeMenu" value="1"/>
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
                        <img src="./img/search.png" height="45px"/>
                    </button>
                </form>
            </div>
        </div>

        <div style="overflow-y: scroll; overflow-x: hidden">
            <div class="adv1 main">adv1</div>
            <div class="adv3 main">adv3</div>
            <div class="M-main">
                <div class="adv2 main" style="margin-top: 10px">
                    <div>adv2_1</div>
                    <div>adv2_2</div>
                    <div>adv2_3</div>
                    <div>adv2_4</div>
                    <div>adv2_1</div>
                    <div>adv2_2</div>
                    <div>adv2_3</div>
                    <div>adv2_4</div>
                    <div>adv2_5</div>
                    <div>adv2_6</div>
                    <div>adv2_7</div>
                    <div>adv2_8</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
