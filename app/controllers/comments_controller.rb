class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = 'コメントを投稿しました。'
    else
      flash[:alert] = 'コメントの投稿に失敗しました。'
    end
    redirect_to idea_path(params[:idea_id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to idea_path(comment.idea_id)
    flash[:alert] = 'コメントを削除しました。'
  end

  private

  def comment_params
    params.permit(:content, :idea_id).merge(user_id: current_user.id)
  end
end
