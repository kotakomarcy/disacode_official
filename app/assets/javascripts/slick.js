$(function() {
    $('.slider').slick({
        prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
        nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
        dots: true,
        autoplay: true,
        autoplaySpeed: 6000,
        speed: 1500,
        arrows: true
    });
    $('.slick-dots li').on('mouseover', function() {
      $('.slider').slick('goTo', $(this).index());
    });
  });

// しんのすけスライダー
  $(function() {
    $('.profile__sinnosuke').slick({
        prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
        nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
        autoplay: true,
        autoplaySpeed: 5000,
        speed: 1500,
        arrows: true
    });
    $('.slick-dots li').on('mouseover', function() {
      $('.profile__sinnosuke').slick('goTo', $(this).index());
    });
  });

// akiraスライダー
$(function() {
  $('.profile__akira').slick({
      prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
      nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
      autoplay: true,
      autoplaySpeed: 5000,
      speed: 1500,
      arrows: true
  });
  $('.slick-dots li').on('mouseover', function() {
    $('.profile__akira').slick('goTo', $(this).index());
  });
});

// まーしースライダー
$(function() {
  $('.profile__marcy').slick({
      prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
      nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
      autoplay: true,
      autoplaySpeed: 5000,
      speed: 1500,
      arrows: true
  });
  $('.slick-dots li').on('mouseover', function() {
    $('.profile__marcy').slick('goTo', $(this).index());
  });
});

// 小動画スライダー
// $(function() {
//   $('.youtube').slick({
//       prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
//       nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
//       autoplay: true,
//       autoplaySpeed: 5000,
//       speed: 1500,
//       arrows: false
//   });
//   $('.slick-dots li').on('mouseover', function() {
//     $('.youtube').slick('goTo', $(this).index());
//   });
// });

// Music videoスライダー
$(function() {
  $('.video__music-video').slick({
      prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
      nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
      autoplay: false,
      speed: 600,
      arrows: true
  });
  $('.slick-dots li').on('mouseover', function() {
    $('.video__music-video').slick('goTo', $(this).index());
  });
});

// Live videoスライダー
$(function() {
  $('.video__live-video').slick({
      prevArrow:'<i class="fa fa-angle-left arrow-left"></i>',
      nextArrow:'<i class="fa fa-angle-right arrow-right"></i>',
      autoplay: false,
      speed: 600,
      arrows: true
  });
  $('.slick-dots li').on('mouseover', function() {
    $('.video__live-video').slick('goTo', $(this).index());
  });
});