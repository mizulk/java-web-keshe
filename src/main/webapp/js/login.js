/**
 * @param form {HTMLFormElement} 表单
 * @return {boolean} 表单验证是否通过
 */
function loginCheck(form) {
    if (form.type.value === '0') {
        $(".dialog-content").text("请选择用户类型");
        $(".dialog").fadeIn();
        return false;
    }
    return false;
}

$(function () {

})