
// PRELOADER
jQuery(window).load(function() {
    // will first fade out the loading animation
    jQuery(".sk-spinner").fadeOut();
    // will fade out the whole DIV that covers the website.
    jQuery(".preloader").delay(1000).fadeOut("slow");
});




// MAIN NAVIGATION
$('.main-navigation').onePageNav({
    scrollThreshold: 0.2, // Adjust if Navigation highlights too early or too late
    scrollOffset: 75, //Height of Navigation Bar
    filter: ':not(.external)',
    changeHash: true
});

/* NAVIGATION VISIBLE ON SCROLL */
mainNav();
$(window).scroll(function () {
    mainNav();
});

function mainNav() {
    var top = (document.documentElement && document.documentElement.scrollTop) || document.body.scrollTop;
    if (top > 40) {
        $('.sticky-navigation').stop().animate({
            "opacity": '1',
            "top": '0'
        });
        $('.sticky-navigation').addClass("sticky-navigation-action1");
        $('.sticky-navigation').removeClass("sticky-navigation-action2");
        $('.navbar-collapse').addClass("sticky-navigation-action4");
        $('.navbar-collapse').removeClass("sticky-navigation-action3");
    } else {
        $('.sticky-navigation').stop().animate({
            "opacity": '1',
            "top": '0'
        });
        $('.sticky-navigation').removeClass("sticky-navigation-action1");
        $('.sticky-navigation').addClass("sticky-navigation-action2");
        $('.navbar-collapse').addClass("sticky-navigation-action3");
        $('.navbar-collapse').removeClass("sticky-navigation-action4");
    }
}


// HIDE MOBILE MENU AFTER CLIKING ON A LINK
$('.navbar-collapse a').click(function(){
    $(".navbar-collapse").collapse('hide');
});


// WOW ANIMATED 
$(function()
{
    new WOW().init();
});

//sendForm Bryan
$(function () {
    var seletor = 'input[name],textarea[name]';
    var form = $('form');
    form.submit(function () {
        form.find(seletor).not("#contactUs_yz").trigger('blur');
        if (form.find('.hasError').length == 0) {
            $.ajax({
                type:'post',
                url:'/ycwebsite/sendMail',
                data: form.serialize(),
                success:function(data){
                    if(data==null||data==""){
                        return;
                    }
                    if(data.success){
                        alert(data.msg);
                        form.find(seletor).val('');
                        $('#kaptchaImage').hide().attr('src', '/ycwebsite/code/captcha-image?' + Math.floor(Math.random()*100) ).fadeIn();
                    }
                    else{
                        alert(data.msg);
                    }
                }
            })
        }
        return false;
    })
    $(document).on('blur', seletor, function () {
        var $that = $(this);
        if (function () {
                var reg = $that.attr('data-reg');
                return RegExp(reg).test($that.val());
            }()) {
            $that.parents('.contactUs-icon-right-01:first').removeClass('hasError');
        } else {
            $that.parents('.contactUs-icon-right-01:first').addClass('hasError');
        }
    });
    //captcha validate
    $(document).on('blur',"#contactUs_yz", function (){
        var $that = $(this);
        $.ajax({
            type:'post',
            url:'/ycwebsite/code/validateCaptcha',
            data: {code : $that.val()},
            success:function(data){
                if(data==null||data==""){
                    return;
                }
                if(data.success){
                    $that.parents('.contactUs-icon-right-01:first').removeClass('hasError');
                }
                else{
                    $that.parents('.contactUs-icon-right-01:first').addClass('hasError');
                }
            }
        })
    });
});

/*captcha Bryan */
$(function(){
    $('#kaptchaImage').click(function () {
        $(this).hide().attr('src', '/ycwebsite/code/captcha-image?' + Math.floor(Math.random()*100) ).fadeIn(); });
});
/*end  Bryan */