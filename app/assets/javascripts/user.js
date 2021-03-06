$(function() {
  let backAvatar       = $('.back-avatar');
  let overlay          = $('.overlay');
  let avatarWrap       = $('.avatar-wrapper');
  let userImg          = $('.user-top__img-wrap--img');
  let nameEditBtn      = $('.name-edit');
  let editBox          = $('.edit-box');
  let editClose        = $('.edit-box__btn--close');

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


  // ユーザーネーム変更
  nameEditBtn.click(function() {
    overlay.fadeIn();
    editBox.fadeIn();
  });
  editClose.click(function() {
    overlay.fadeOut();
    editBox.fadeOut();
  });

});