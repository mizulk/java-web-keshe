$(function () {
    $("form").on("submit", function (event) {
        let form = $(this)[0];
        let dialogContent = $(".dialog-content");
        let dialog = $(".dialog");

        let option = form.type.value;

        if (option === '0') {
            dialogContent.text("请选择用户类型");
            dialog.fadeIn();
        } else {
            $.ajax({
                url: "reader-login",
                type: "post",
                data: {
                    account: form.account.value,
                    password: form.password.value
                },
                success(res) {
                    if (res === "ok") {
                        form.password.value = "";
                        window.location.href = option === '1' ? "managerIndex.jsp" : "readerIndex.jsp";
                    } else {
                        dialogContent.text(res);
                        dialog.fadeIn();
                    }
                },
                error(xhr, textStatus) {
                    dialogContent.text("登录时发生错误：" + textStatus);
                    dialog.fadeIn();
                }
            });
            event.preventDefault();
        }
    });
});