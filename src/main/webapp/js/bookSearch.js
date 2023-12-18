$(function () {
    $('.purchase').click(function () {
        let data = $(this).data("id");
        $.ajax({
            url: "addOrder",
            method: "post",
            data: {
                readerId: $('#user-id').data("readerid"),
                bookId: data,
            },
            success(res) {
                if (res.code === 200) {
                    alert("¹ºÂò³É¹¦");
                }
            },
            error(xhr, msg, _code) {
                alert("Ê§°Ü");
            }
        });
    });
});