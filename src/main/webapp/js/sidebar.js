$(function () {
    // $(".menu:not(.active) .menu-content").hide();

    let menu = $(".menu");
    menu.click(function () {
        $(this).toggleClass("active").find(".menu-content").slideToggle();
    });

    let menuItem = $(".menu-item");
    menuItem.click(function (event) {
        menuItem.not(this).removeClass("active");
        window.location.href = $(this).addClass("active").data("href");
        event.stopPropagation();
    });
});
