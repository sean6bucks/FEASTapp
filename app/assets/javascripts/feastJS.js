var ready = function() {

$('#nav-icon3').click(function(){
  $(this).toggleClass('open');
});

$('#nav-icon3').click(function(){
  if($(this).hasClass('open')) {
    var navIconBackground = document.getElementById("navIconBackground");
    TweenMax.to(navIconBackground, 0.5, {left:"-100%", ease:Power1.easInOut});
    var navWindow = document.getElementById("navWindow");
    TweenMax.to(navWindow, 0.5, {left:"0%", ease:Power1.easeInOut});
  } else {
    var navWindow = document.getElementById("navWindow");
    var navIconBackground = document.getElementById("navIconBackground");
    TweenMax.to(navWindow, 0.5, {left:"-100%", ease:Power1.easeInOut});
    TweenMax.to(navIconBackground, 0.5, {left:"0%", ease:Power1.easInOut});
  }
});

// $('#navButton').click(function(){
//    var navWindow = document.getElementById("navWindow");
//    TweenMax.to(navWindow, 1, {left:"0%", ease:Power1.easeInOut});
// })

// $('.navX').click(function(){
//   var navWindow = document.getElementById("navWindow");
//   TweenMax.to(navWindow, 1, {left:"-100%", ease:Power1.easeInOut});
// })

$('.jumbotron').click(function(){
  $("html, body").animate({ scrollTop: $('#workBar').offset().top -75 }, 500);
})

$('.aboutNav').click(function(){
  $("html, body").animate({ scrollTop: $('#aboutBar').offset().top -75}, 500);
})

$('.contactNav').click(function(){
  $("html, body").animate({ scrollTop: $('#contactBox').offset().top -75 }, 500);
})

var scroller = function(){
   var thumb1 = document.getElementsByClassName("homeThumb1");
   TweenMax.from(thumb1, 8, {left:"120%", repeat:-1, ease:Linear.easeNone});
   
   var thumb2 = document.getElementsByClassName("homeThumb2");
   TweenMax.from(thumb2, 8, {left:"120%", repeat:-1, delay: 2, ease:Linear.easeNone});

   var thumb3 = document.getElementsByClassName("homeThumb3");
   TweenMax.from(thumb3, 8, {left:"120%", repeat:-1, delay: 4, ease:Linear.easeNone});
   
   var thumb4 = document.getElementsByClassName("homeThumb4");
   TweenMax.from(thumb4, 8, {left:"120%", repeat:-1, delay: 6, ease:Linear.easeNone});
   
   var thumb5 = document.getElementsByClassName("homeThumb5");
   TweenMax.from(thumb5, 2, {left:"0%", ease:Linear.easeNone});
   
   var thumb6 = document.getElementsByClassName("homeThumb6");
   TweenMax.from(thumb6, 4, {left:"40%", ease:Linear.easeNone});
   
   var thumb7 = document.getElementsByClassName("homeThumb7");
   TweenMax.from(thumb7, 6, {left:"80%", ease:Linear.easeNone});



};

window.onload = function (){

scroller();

$(function() {
    $("#workBar").css("height", function() {
        return $('.workElement').height();
    });
});


}


$(window).resize(function(){

	$('.largeText').height(
		$('.workElement').height()
	);
});

$(window).resize(function() {
    $("#workBar").css("height", function() {
        return $('.workElement').height();
    });

});


$('#workBar').hover(function(){
	// $('.largeText').css("display","inline");
	// $('.largeText').css("opacity","0.5", 500);
	$('.largeText').height(
		$('.workElement').height()
		);
	$('.largeText').toggleClass("visable");
});
};

$(document).ready(ready);
$(document).on('page:load', ready);