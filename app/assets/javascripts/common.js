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

  // カード
  let categories = $('.card__other--category');


  categories.each(function(i, cat) {
    let cardTop = $(cat).closest('.card').find('.card__top');
    let catName = $(cat).text().trim();

    console.log(catName)
    switch(catName) {
      case 'webサイト':
        $(cat).css('background', '#2196F3');
        $(cardTop).css('border', '7px solid #2196F3');
        break;
      case 'アプリ':
        $(cat).css('background', '#1976D2');
        $(cardTop).css('border', '7px solid #1976D2');
        break;
      case 'ゲーム':
        $(cat).css('background', '#f1c40f');
        $(cardTop).css('border', '7px solid #f1c40f');
        break;
      case '音楽':
        $(cat).css('background', '#E91E63');
        $(cardTop).css('border', '7px solid #E91E63');
        break;
      case 'グルメ':
        $(cat).css('background', '#e67e22');
        $(cardTop).css('border', '7px solid #e67e22');
        break;
      case '暮らし':
        $(cat).css('background', '#1abc9c');
        $(cardTop).css('border', '7px solid #1abc9c');
        break;
      case 'ビジネス':
        $(cat).css('background', '#283593');
        $(cardTop).css('border', '7px solid #283593');
        break;
      case 'オフライン':
        $(cat).css('background', '#34495e');
        $(cardTop).css('border', '7px solid #34495e');
        break;
      case 'その他':
        $(cat).css('background', '#95a5a6');
        $(cardTop).css('border', '7px solid #95a5a6');
        break;
    }
  })


  // 投稿ボタン
  let postBtn = $('.post-btn');
  let path    = location.pathname
  if(path == '/ideas/new') {
    postBtn.css('display', 'none');
  }


});