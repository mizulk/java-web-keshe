$(function () {
    $('#reader-modify-submit').click(function () {
        let dialog = $('.dialog-wrapper'),
            dialogContent = $('.dialog-content');
        let account = $('#reader-modify-account').val(),
            name = $('#reader-modify-name').val(),
            oldpassword = $('#reader-modify-oldpassword').val(),
            tel = $('#reader-modify-tel').val(),
            newpassword = $('#reader-modify-newpassword').val(),
            confirmpsw = $('#reader-modify-confirmpsw').val(),
            email = $('#reader-modify-email').val(),
            notes = $('#reader-modify-notes').val();

        if (newpassword !== '' && confirmpsw !== '' && newpassword !== confirmpsw) {
            dialogContent.text("两次密码不相等");
            dialog.show();
            return;
        }

        $.ajax({
            url: "modifyReader",
            method: "post",
            data: {
                account, name, oldpassword, tel, newpassword, confirmpsw, email, notes
            },
            success(res) {
                if (res.code === 200) {
                    dialogContent.text("修改成功！");
                } else if (res.code === 400) {
                    dialogContent.text("旧密码错误");
                } else {
                    dialogContent.text(`发生错误！错误代码：${res.code}，错误信息：${res.msg}`);
                }
                dialog.show();
            },
            error(xhr, msg, _code) {
                dialogContent.text("请求失败" + msg)
                dialog.show();
            }
        });
    });
});