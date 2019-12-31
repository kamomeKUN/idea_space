$(function() {
  let swichLike  = $('#swich-like');
  let likePosts  = $('.like-posts-wrapper');
  let myPosts    = $('.my-posts-wrapper');
  let backLikePosts       = $('.back');
  let backAvatar = $('.back-avatar');
  let overlay    = $('.overlay');
  let avatarWrap = $('.avatar-wrapper');
  let userImg    = $('.user-top__img-wrap--img');

  // タブ切り替え
  swichLike.click(function() {
    backLikePosts.show();
    likePosts.show();
    myPosts.hide();
  })
  backLikePosts.click(function() {
    overlay.fadeOut();
    backLikePosts.hide();
    likePosts.hide();
    myPosts.show();
  })


  // アバター選択モーダル
  backAvatar.click(function() {
    avatarWrap.fadeOut();
    overlay.fadeOut();
  })

  userImg.click(function() {
    backAvatar.fadeIn();
    overlay.fadeIn();
    avatarWrap.fadeIn();
    back.fadeIn();
  })
});