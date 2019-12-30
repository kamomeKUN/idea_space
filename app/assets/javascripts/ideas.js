$(function() {
  // 検索フォーム
  let searchForm  = $('.search-form');
  let searchTitle = $('.search-title');
  let searchPlus  = $('.fa-search-plus');
  let searchMinus = $('.fa-search-minus');

  searchTitle.click(function() {
    if(searchTitle.hasClass('active')) {
      searchTitle.removeClass('active');
      searchForm.slideDown();
      searchPlus.hide();
      searchMinus.show();
    } else {
      searchTitle.addClass('active');
      searchForm.slideUp();
      searchPlus.show();
      searchMinus.hide();
    }
  });


  // indexページ新着
  let postsWrap = $('.posts-wrapper');
  let path      = location.pathname
  if(path === '/ideas') {
    postsWrap.css('padding', '3rem 0 5rem');
  };
});