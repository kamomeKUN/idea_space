class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    case @user.avatar
    when 0 then
      @image = 'shirokuma.png'
    when 1 then
      @image = 'shirokuma.png'
    else
      @image = 'shirokuma.png'
    end

    @ideas = @user.ideas.order(created_at: "DESC").page(params[:page]).per(6)

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

end
