<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/17
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户订单</title>
    <link rel="stylesheet" href="./css/order.css"/>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="图书销售系统"/>
</jsp:include>

<div class="container">
    <jsp:include page="readerSidebar.jsp">
        <jsp:param name="activeName" value="我的订单"/>
        <jsp:param name="activeMenu" value="2"/>
    </jsp:include>

    <div class="h_main">
        <div class="m_main">
            <div class="tableBox">
                <table>
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>订单编号</th>
                        <th>图书名称</th>
                        <th>图书编号</th>
                        <th>图书价格</th>
                        <th>购买时间</th>
                        <th>购买数量</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0;i < 20;i ++){
                    %>
                    <tr>
                        <td>马冬梅</td>
                        <td>123456</td>
                        <td>天外飞仙</td>
                        <td>123-456</td>
                        <td>18.88</td>
                        <td>2023.12.14</td>
                        <td>1</td>
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
