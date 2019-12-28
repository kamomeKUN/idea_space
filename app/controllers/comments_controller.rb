class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to idea_path(params[:idea_id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to idea_path(comment.idea_id)
  end

  private

  def comment_params
    params.permit(:content, :idea_id).merge(user_id: current_user.id)
  end
end
