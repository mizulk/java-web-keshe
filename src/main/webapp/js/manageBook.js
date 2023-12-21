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
                    alert("ɾ���ɹ�");
                } else {
                    alert("ɾ��ʧ��");
                }
            },
            error(xhr, msg, _code) {
                alert("����ʧ��" + msg)
            }
        });
    });

});