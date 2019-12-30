class LikesController < ApplicationController
  def like
    like = Like.new(idea_id: params[:id], user_id: current_user.id)
    like.save
    redirect_back(fallback_location: root_path)
  end
  def destroy
    like = Like.find_by(idea_id: params[:id], user_id: current_user.id)
    like.destroy
    redirect_back(fallback_location: root_path)
  end

end
