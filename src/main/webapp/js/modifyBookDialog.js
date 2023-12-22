$(function () {

    let dialog = $('.dialog-book-wrapper');

    $('#dialog-book-cancel').click(function () {
        dialog.hide();
    });

    $('#dialog-book-confirm').click(function () {
        let id = $('#dialog-book-id').val(),
            bookName = $('#dialog-book-bookName').val(),
            publisher = $('#dialog-book-publisher').val(),
            author = $('#dialog-book-author').val(),
            price = $('#dialog-book-price').val(),
            path = $('#dialog-book-path').val(),
            bookType = $('#dialog-book-bookType').val();

        $.ajax({
            url: "modifyBook",
            method: "post",
            data: {
                id, bookName, publisher, author, price, path, bookType
            },
            success(res) {
                if (res.code === 200) {
                    let tr = $('.book-' + res.data.id).children();
                    tr[0].innerHTML = res.data.bookName;
                    tr[1].innerHTML = res.data.id;
                    tr[2].innerHTML = res.data.bookType;
                    tr[3].innerHTML = res.data.price;
                    tr[4].innerHTML = res.data.publisher;
                    tr[5].innerHTML = res.data.bought;
                    alert("修改成功");
                    dialog.hide();
                } else {
                    alert(`发生错误！错误代码：${res.code}，错误信息：${res.msg}`);
                }
            },
            error(xhr, msg, _code) {
                alert("请求失败" + msg);
            }
        });
    });

    $('.edit').click(function () {
        $.ajax({
            url: "book",
            method: "post",
            data: {
                bookId: $(this).data("id")
            },
            success(res) {
                if (res.code === 200) {
                    $('#dialog-book-id').val(res.data.id);
                    $('#dialog-book-bookName').val(res.data.bookName);
                    $('#dialog-book-publisher').val(res.data.publisher);
                    $('#dialog-book-author').val(res.data.author);
                    $('#dialog-book-price').val(res.data.price);
                    $('#dialog-book-path').val(res.data.path);
                    $('#dialog-book-bookType').val(res.data.bookType);
                    dialog.show();
                } else {
                    alert(`发生错误！错误代码：${res.code}，错误信息：${res.msg}`);
                }
            },
            error(xhr, msg, _code) {
                alert("发起请求失败" + msg);
            }
        });

    });
});