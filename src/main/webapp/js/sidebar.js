$(function () {
    $(".menu:not(.active) .menu-content").hide();

    let menu = $(".menu");
    menu.click(function () {
        $(this).toggleClass("active").find(".menu-content").slideToggle();
    });

    let menuItem = $(".menu-item");
    menuItem.click(function (event) {
        menuItem.not(this).removeClass("active");
        $(this).addClass("active");
        event.stopPropagation();
    });
});
