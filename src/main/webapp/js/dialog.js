$(function () {

    let dialog = $(".dialog");
    $("#dialog-cancel").click(function () {
        let param = $(this).data("value");
        if (param === '') {
            dialog.fadeOut();
            return;
        }
        if (param.close) {
            dialog.fadeOut();
        }
    });

    $("#dialog-confirm").click(function () {
        let param = $(this).data("value");
        if (param === '') {
            dialog.fadeOut();
            return;
        }
        if (param.close) {
            dialog.fadeOut();
        }
        if (param.href) {
            window.location.href = param.href;
        }
    });
});
