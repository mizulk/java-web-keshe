$(function (){
    let dialog = $(".dialog-wrapper");

    $("#dialog-cancel").click(function () {
        dialog.hide();
    });

    $("#dialog-confirm").click(function () {
       dialog.hide();
    });
});