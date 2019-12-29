class IdeasController < ApplicationController

  def top
    @ideas = Idea.all
  end

  def index
    @ideas = Idea.all
    @categories = ['webサイト', 'アプリ', 'ゲーム', '音楽', 'グルメ', '暮らし', 'ビジネス', 'オフライン', 'その他']
  end

  def show
    @idea = Idea.find(params[:id])
    @user = User.find(@idea.user_id)
    @comments = @idea.comments.order(created_at: "DESC")
  end

  def newlist

  end

  def popular
  end

  def new
    @idea = Idea.new
    @categories = ['webサイト', 'アプリ', 'ゲーム', '音楽', 'グルメ', '暮らし', 'ビジネス', 'オフライン', 'その他']
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.save
    redirect_to root_path
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy
    redirect_to root_path
  end

  def search
    @ideas = Idea.where(category: params[:category])
  end


  private

  def idea_params
    params.require(:idea).permit(:title, :content, :category).merge(user_id: current_user.id)
  end

  def set_categories

  end
end
