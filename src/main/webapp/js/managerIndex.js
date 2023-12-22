$(function () {

    let readerDialog = $('.dialog-reader-wrapper');
    let bookDialog = $('.dialog-book-wrapper');

    $('#add-reader').click(function () {
        readerDialog.show();
    });

    $('#add-book').click(function () {
        bookDialog.show();
    });

    $('#dialog-reader-cancel').click(function () {
        readerDialog.hide();
    });

    $('#dialog-book-cancel').click(function () {
        bookDialog.hide();
    });

    $('#dialog-reader-confirm').click(function () {
        let form = $('#dialog-reader-form');
        let account = form.find('#dialog-reader-account').val(),
            password = form.find('#dialog-reader-password').val(),
            name = form.find('#dialog-reader-name').val(),
            tel = form.find('#dialog-reader-tel').val(),
            email = form.find('#dialog-reader-email').val(),
            notes = form.find('#dialog-reader-notes').val();
        if (
            account === "" ||
            password === "" ||
            tel === ""
        ) {
            alert("�����������");
            return;
        }
        $.ajax({
            url: "addReader",
            method: "post",
            data: {
                account, password, name, tel, email, notes
            },
            success(res) {
                if (res.code === 200) {
                    alert("��Ӷ��߳ɹ�")
                } else {
                    alert(`�������󣡴�����룺${res.code}��������Ϣ��${res.msg}`);
                }
                readerDialog.hide();
            },
            error(xhr, msg, _code) {
                alert("��������ʧ��" + msg);
            }
        });
    });

    $('#dialog-book-confirm').click(function () {
        let form = $('#dialog-book-form');
        let bookName = form.find('#dialog-book-bookName').val(),
            publisher = form.find('#dialog-book-publisher').val(),
            author = form.find('#dialog-book-author').val(),
            price = form.find('#dialog-book-price').val(),
            path = form.find('#dialog-book-path').val(),
            bookType = form.find('#dialog-book-bookType').val();
        if (
            bookName === "" ||
            publisher === "" ||
            author === "" ||
            price === "" ||
            path === "" ||
            bookType === ""
        ) {
            alert("�����������");
            return;
        }

        $.ajax({
            url: "addBook",
            method: "post",
            data: {
                bookName, publisher, author, price, path, bookType
            },
            success(res) {
                if (res.code === 200) {
                    alert("���ͼ��ɹ�")
                } else {
                    alert(`�������󣡴�����룺${res.code}��������Ϣ��${res.msg}`);
                }
                bookDialog.hide();
            },
            error(xhr, msg, _code) {
                alert("��������ʧ��" + msg);
            }
        });
    });

});