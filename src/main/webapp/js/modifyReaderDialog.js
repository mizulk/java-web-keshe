$(function () {

    let dialog = $('.dialog-reader-wrapper');

    $('#dialog-reader-cancel').click(function () {
        dialog.hide();
    });

    $('#dialog-reader-confirm').click(function () {
        let form = $('#dialog-reader-form');
        let account = form.find('#dialog-reader-account').val(),
            newpassword = form.find('#dialog-reader-password').val(),
            name = form.find('#dialog-reader-name').val(),
            tel = form.find('#dialog-reader-tel').val(),
            email = form.find('#dialog-reader-email').val(),
            notes = form.find('#dialog-reader-notes').val();
        $.ajax({
            url: "modifyReader",
            method: "post",
            data: {
                account, newpassword, name, tel, email, notes
            },
            success(res) {
                if (res.code === 200) {
                    let tr = $('.reader-' + res.data.id).children();
                    tr[0].innerHTML = res.data.name;
                    tr[1].innerHTML = res.data.account;
                    tr[2].innerHTML = res.data.password;
                    tr[3].innerHTML = res.data.telephone;
                    tr[4].innerHTML = res.data.eMail;
                    alert("修改成功");
                } else {
                    alert(`发生错误！错误代码：${res.code}，错误信息：${res.msg}`);
                }
                dialog.hide();
            },
            error(xhr, msg, _code) {
                alert("发起请求失败" + msg);
            }
        });
    });

    $('.edit').click(function () {
        $.ajax({
            url: "getReader",
            method: "post",
            data: {
                id: $(this).data("id")
            },
            success(res) {
                if (res.code === 200) {
                    $('#dialog-reader-account').val(res.data.account);
                    $('#dialog-reader-password').val(res.data.password);
                    $('#dialog-reader-name').val(res.data.name);
                    $('#dialog-reader-tel').val(res.data.telephone);
                    $('#dialog-reader-email').val(res.data.eMail);
                    $('#dialog-reader-notes').val(res.data.remark);
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