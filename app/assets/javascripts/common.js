$(function() {
  // ハンバーガーメニュー
  let hamburger = $('.menu-trigger');
  let sidebar = $('.sidebar');
  hamburger.click(function() {
    hamburger.toggleClass('active');
    if(sidebar.css('width') == '400px') {
      if(hamburger.hasClass('active')) {
        $('.sidebar').css('transform', 'translateX(0)');
        $("body").css('overflow','hidden');
      } else {
        $('.sidebar').css('transform', 'translateX(-400px)');
        $("body").css('overflow','auto');
      }
    } else {
      if(hamburger.hasClass('active')) {
        $('.sidebar').css('transform', 'translateX(0)');
        $("body").css('overflow','hidden');
      } else {
        $('.sidebar').css('transform', 'translateX(-100vw)');
        $("body").css('overflow','auto');
      }
    }
  });

  // フラッシュメッセージ
  let closeBtn      = $('.fa-times');
  let overlay       = $('.flash-overlay');
  let flashMessage  = $('.flash-box');

  closeBtn.click(function() {
    overlay.fadeOut();
    flashMessage.fadeOut();
  });
});