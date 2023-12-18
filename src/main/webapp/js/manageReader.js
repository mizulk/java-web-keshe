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