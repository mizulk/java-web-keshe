<%--
  Created by IntelliJ IDEA.
  User: null
  Date: 2023/12/19
  Time: 19:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="css/modifyDialog.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/modifyBookDialog.js"></script>
<body>
<div class="dialog-wrapper" style="display: none">
    <div class="dialog-main">
        <h2 class="dialog-title">${param.title}</h2>
        <form action=""
              method="post"
              onsubmit="return false;"
        >
            <span>图书id：</span
            ><input
                id="dialog-book-id"
                type="text"
                name="id"
                readonly
        />
            <span>书名：</span
            ><input
                id="dialog-book-bookName"
                type="text"
                name="bookName"
                placeholder="请输入书名"
                required
        />
            <span>出版社：</span
            ><input
                id="dialog-book-publisher"
                type="text"
                name="publisher"
                placeholder="请输入出版社"
                required
        />
            <span>作者：</span
            ><input
                id="dialog-book-author"
                type="text"
                name="author"
                placeholder="请输入书的作者"
                required
        />
            <span>价格：</span
            ><input
                id="dialog-book-price"
                type="number"
                name="price"
                placeholder="请输入价格"
                required
        />
            <span>图片路径：</span
            ><input
                id="dialog-book-path"
                type="text"
                name="path"
                required
        />
            <span>图书类型：</span
            ><input
                id="dialog-book-bookType"
                type="text"
                name="bookType"
                required
        />
        </form>
        <div class="dialog-btn-group">
            <div class="btn btn-normal" id="dialog-cancel">取消</div>
            <div class="btn btn-primary" id="dialog-confirm">确认</div>
        </div>
    </div>
</div>
</body>
</html>
