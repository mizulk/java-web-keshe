$(function () {
    let dialog = $(".dialog");
    let book_id;

    $(".book").click(function () {
        book_id = $(this).data("id");
        $.ajax({
            url: "book",
            method: "get",
            data: {
                bookId: book_id
            },
            success(res) {
                if (res.code === 200) {
                    $('#dialog-book-img').attr("src", 'img/books/' + res.data.path);
                    $('#dialog-book-name').text(res.data.bookName);
                    $('#dialog-book-publisher').text(res.data.publisher);
                    $('#dialog-book-author').text(res.data.author);
                    $('#dialog-book-bought').text(res.data.bought);
                    $('#dialog-book-price').text(res.data.price + '￥');
                    $('.dialog-book-content').data("bookId", res.data.id);
                    dialog.show();
                } else {
                    alert("未找到图书");
                }
            },
            error(xhr, msg, _code) {
                alert("请求图书信息失败" + msg);
            }
        });
    });

    $('#dialog-confirm').click(function () {
        $.ajax({
            url: "addOrder",
            method: "post",
            data: {
                readerId: $('#user-id').data("readerid"),
                bookId: book_id,
            },
            success(res) {
                if (res.code === 200) {
                    alert("购买成功");
                }
            },
            error(xhr, msg, _code) {
                alert("失败");
            }
        });
    });
});