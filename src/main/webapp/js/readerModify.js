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
            dialogContent.text("�������벻���");
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
                    dialogContent.text("�޸ĳɹ���");
                } else if (res.code === 400) {
                    dialogContent.text("���������");
                } else {
                    dialogContent.text(`�������󣡴�����룺${res.code}��������Ϣ��${res.msg}`);
                }
                dialog.show();
            },
            error(xhr, msg, _code) {
                dialogContent.text("����ʧ��" + msg)
                dialog.show();
            }
        });
    });
});