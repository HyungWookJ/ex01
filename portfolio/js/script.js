$(function(){
    $('.gnb .dep01 .menu1').click(function(){
        var dep = $(this).siblings('.dep02').css('display')
        if(dep == 'block'){
            $('.gnb .dep01 .dep02').slideUp();
            $('.gnb .dep01 .menu1').removeClass('on');
        } else{
            $('.gnb .dep01 .dep02').slideUp();
            $(this).siblings('.dep02').slideDown();
            $('.gnb .dep01 .menu1').removeClass('on');
            $(this).addClass('on');
        }
        return false;
    })
})

$(document).on("click", ".Gnb_m .menu_button, .Gnb_m .menu-panel-overlay", function() {
    $(".Gnb_m .menu_button, .Gnb_m .menu-panel-overlay, .Gnb_m .menu-panel").toggleClass("is-active")
}).on("click", ".Gnb_m .menu-list_arrow", function() {
    var e = $(this).parents("li").hasClass("is-open");
    $(".ccGnb_m .menu-label").removeClass("is-open"),
    $(this).parents("li").addClass("is-open"),
    e && $(this).parents("li").removeClass("is-open")
})