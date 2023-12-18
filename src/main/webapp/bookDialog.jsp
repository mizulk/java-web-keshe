<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/18
  Time: 13:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="./css/bookDialog.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/bookDialog.js"></script>
<body>
<div class="dialog" style="display: none">
    <h2 class="dialog-title">图书详细</h2>
    <div class="dialog-book-content">
        <img id="dialog-book-img" src="" alt="book image">
        <div class="dialog-book-info">
            <span>书名:</span><span id="dialog-book-name"></span>
            <span>出版社:</span><span id="dialog-book-publisher"></span>
            <span>作者:</span><span id="dialog-book-author"></span>
            <span>被购买:</span><span id="dialog-book-bought"></span>
            <span>价格:</span><span id="dialog-book-price"></span>
        </div>
    </div>
    <div class="dialog-btn-group">
        <div class="btn btn-normal" id="dialog-cancel">关闭</div>
        <div class="btn btn-primary" id="dialog-confirm">购买</div>
    </div>
</div>
</body>
</html>
