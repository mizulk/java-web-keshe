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
                    alert("����ɹ�");
                }
            },
            error(xhr, msg, _code) {
                alert("ʧ��");
            }
        });
    });
});