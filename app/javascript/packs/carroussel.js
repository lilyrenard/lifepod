import 'jquery';



$(window).on('load', function(){
  console.log('init')
  // Please run it with window.onload, not with document.ready
  initSmoothScrolling('.block','smoothscroll');
});

function initSmoothScrolling(container,animation){
 /*
  * @param {String} container Class or ID of the animation container
  * @param {String} animation Name of the animation, e.g. smoothscroll
  */

  console.dir(container)
  console.dir(animation)

  var sliderWidth = 0;
  var animationWidth = 0;
  var sliderHeight = $('>div>div:first-of-type',container).outerHeight(false);

  console.dir(sliderHeight)

  $('>div>div', container).each(function(){
    animationWidth += $(this).outerWidth(false);
    console.dir(animationWidth);
  });



  // detect number of visible slides
  var slidesVisible = $(container).width() / $('>div>div:first-of-type',container).outerWidth(false);
  console.dir(slidesVisible);
  slidesVisible = Math.ceil(slidesVisible);

  // count slides to determine animation speed
  var slidesNumber = $('>div>div', container).length;
  var speed = slidesNumber*10;

  console.dir(slidesNumber);
  console.dir(speed);

// append the tail
  $('>div>div',container).slice(0,slidesVisible).clone().appendTo($('>div',container));
  console.dir($('>div',container));

  // Detect the slider width with appended tail
  $('>div>div', container).each(function(){
    sliderWidth += $(this).outerWidth(false);
    console.dir(sliderWidth);
  });

  // set slider dimensions
  $('>div',container).css({'width':sliderWidth,'height':sliderHeight});

// Insert styles to html
  console.dir(document.querySelector(`${container}>div>div:first-of-type`))
  $("<style type='text/css'>@keyframes "+animation+" { 0% { margin-left: 0px; } 100% { margin-left: -"+animationWidth+"px; } } "+`${container}>div>div:first-of-type`+" { -webkit-animation: "+animation+" "+speed+"s linear infinite; -moz-animation: "+animation+" "+speed+"s linear infinite; -ms-animation: "+animation+" "+speed+"s linear infinite; -o-animation: "+animation+" "+speed+"s linear infinite; animation: "+animation+" "+speed+"s linear infinite; }</style>").appendTo("head");
  console.log('style inserted')
  // restart the animation (e.g. for safari & ie)
  var cl = $(container).attr("class");
  console.dir(cl)
  $(container).removeClass(cl).animate({'nothing':null}, 1, function () {
    $(this).addClass(cl);
  });
}

export { initSmoothScrolling };
