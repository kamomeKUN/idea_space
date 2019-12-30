$(function() {
  let swichLike = $('#swich-like');
  let likePosts = $('.like-posts-wrapper');
  let myPosts   = $('.my-posts-wrapper');
  let back      = $('#back');

  swichLike.click(function() {
    back.show();
    likePosts.show();
    myPosts.hide();
  });

  back.click(function() {
    back.hide();
    likePosts.hide();
    myPosts.show();
  })
});