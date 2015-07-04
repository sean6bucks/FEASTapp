var ready = function() {

// Navigation Menu

$('#navButton').click(function(){
   var navWindow = document.getElementById("navWindow");
   TweenMax.to(navWindow, 1, {left:"0%", ease:Power1.easeInOut});
});

$('.navX').click(function(){
  var navWindow = document.getElementById("navWindow");
  TweenMax.to(navWindow, 1, {left:"-100%", ease:Power1.easeInOut});
});

// Gallery Caterogies

$('.catNav li').click(function(){
	var tag = $(this).attr('id');
	$('.thumbnail').hide();
	$("." + tag).fadeIn();
});

//Slideshow

var gallerySlideshow = function(){
    var currentSlide = $('.activeSlide');
    var nextSlide = currentSlide.next();
    
    if(nextSlide.length == 0){
        nextSlide = $('.slide').first();
    }
    currentSlide.fadeOut(600).removeClass('activeSlide');
    nextSlide.fadeIn(600).addClass('activeSlide');
    
};
setInterval(gallerySlideshow, 2000);
    
};


$(document).ready(ready);
$(document).on('page:load', ready);