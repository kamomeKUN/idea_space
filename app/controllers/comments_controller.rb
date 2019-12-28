class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to idea_path(params[:idea_id])
  end

  private

  def comment_params
    params.permit(:content, :idea_id).merge(user_id: current_user.id)
  end
end
