class UsersController < ApplicationController
  LIMIT = 6

  def follow
    @user = User.find(params[:id])
    @follow_list = @user.followings.page(params[:page]).per(1)
    case @user.avatar
    when 1 then
      @image = 'hiyoko2.png'
    when 2 then
      @image = 'usagi.png'
    when 3 then
      @image = 'harinezumi.png'
    when 4 then
      @image = 'inu.png'
    when 5 then
      @image = 'neko.png'
    when 6 then
      @image = 'raion.png'
    when 7 then
      @image = 'shirokuma.png'
    else
      @image = 'hiyoko.png'
    end

    @likes_count = 0
    @user.ideas.each do |idea|
      @likes_count += idea.likes.count
    end
  end

  def like
    @user = User.find(params[:id])
    @user_likes = @user.likes
    @like_ideas = []
    @user_likes.each do |like|
      @like_ideas << Idea.find(like.idea_id)
    end
    @ideas = Kaminari.paginate_array(@like_ideas).page(params[:page]).per(LIMIT)

    case @user.avatar
    when 1 then
      @image = 'hiyoko2.png'
    when 2 then
      @image = 'usagi.png'
    when 3 then
      @image = 'harinezumi.png'
    when 4 then
      @image = 'inu.png'
    when 5 then
      @image = 'neko.png'
    when 6 then
      @image = 'raion.png'
    when 7 then
      @image = 'shirokuma.png'
    else
      @image = 'hiyoko.png'
    end

    @likes_count = 0
    @user.ideas.each do |idea|
      @likes_count += idea.likes.count
    end
  end

  def followers
    @user = User.find(params[:id])
    @followers_list = @user.followers.page(params[:page]).per(1)
    case @user.avatar
    when 1 then
      @image = 'hiyoko2.png'
    when 2 then
      @image = 'usagi.png'
    when 3 then
      @image = 'harinezumi.png'
    when 4 then
      @image = 'inu.png'
    when 5 then
      @image = 'neko.png'
    when 6 then
      @image = 'raion.png'
    when 7 then
      @image = 'shirokuma.png'
    else
      @image = 'hiyoko.png'
    end

    @likes_count = 0
    @user.ideas.each do |idea|
      @likes_count += idea.likes.count
    end
  end

  def delete

  end

  def update
    user = User.find(current_user.id)
    user.update(name: params[:name])
    flash[:notice] = '名前を変更しました'
    redirect_to user_path(current_user.id)
  end

  def show
    @user = User.find(params[:id])
    case @user.avatar
    when 1 then
      @image = 'hiyoko2.png'
    when 2 then
      @image = 'usagi.png'
    when 3 then
      @image = 'harinezumi.png'
    when 4 then
      @image = 'inu.png'
    when 5 then
      @image = 'neko.png'
    when 6 then
      @image = 'raion.png'
    when 7 then
      @image = 'shirokuma.png'
    else
      @image = 'hiyoko.png'
    end

    @ideas = @user.ideas.order(created_at: "DESC").page(params[:page]).per(LIMIT)

    @user_likes = @user.likes

    @like_ideas = []
    @user_likes.each do |like|
      @like_ideas << Idea.find(like.idea_id)
    end


    @likes_count = 0
    @user.ideas.each do |idea|
      @likes_count += idea.likes.count
    end
  end



  def avatar_update
    @user = User.find(current_user.id)
    @user.update(avatar: params[:id])
    redirect_to user_path(@user.id)
  end

end
