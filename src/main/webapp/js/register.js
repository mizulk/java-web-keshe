/**
 * @param form {HTMLFormElement}
 * @return {boolean} 是否提交表单
 */
function registerCheck(form) {
    if (form.password.value !== form.confirmpsw.value) {
        $(".dialog-content").text("两次输入的密码不相同");
        $(".dialog-wrapper").fadeIn();
        return false;
    }
    return true;
}