$(function () {
    $('.edit').click(function () {

    });

    $('.delete').click(function () {
        let readerId = $(this).data("id");
        $.ajax({
            url: "delReader",
            method: "get",
            data: {
                id: readerId
            },
            success(res) {
                if (res.code === 200) {
                    $('.book-' + readerId).remove();
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