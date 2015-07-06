$(document).ready(function () {


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
    
});