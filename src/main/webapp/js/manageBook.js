$(function () {

    $('.delete').click(function () {
        let bookid = $(this).data("id");
        $.ajax({
            url: "delBook",
            method: "get",
            data: {
                id: bookid
            },
            success(res) {
                if (res.code === 200) {
                    $('.book-' + bookid).remove();
                    alert("É¾³ý³É¹¦");
                } else {
                    alert("É¾³ýÊ§°Ü");
                }
            },
            error(xhr, msg, _code) {
                alert("ÇëÇóÊ§°Ü" + msg)
            }
        });
    });

});