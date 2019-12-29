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

    @ideas = @user.ideas

    @likes_count = 0
    @user.ideas.each do |idea|
      @likes_count += idea.likes.count
    end
  end

end
