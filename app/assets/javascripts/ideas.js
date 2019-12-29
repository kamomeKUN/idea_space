$(function() {
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

});