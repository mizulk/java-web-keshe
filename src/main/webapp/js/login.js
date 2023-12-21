
/**
 *
 * @param {HTMLFormElement} form
 * @return {boolean}
 */
function loginCheck(form){
    let dialogContent = $(".dialog-content");
    let dialog = $(".dialog-wrapper");

    let option = form.type.value;
    if (option === '0') {
        dialogContent.text("��ѡ���û�����");
        dialog.fadeIn();
        return false;
    }
    form.action = option === '2' ? "readerLogin" : "managerLogin";
    return true;
}