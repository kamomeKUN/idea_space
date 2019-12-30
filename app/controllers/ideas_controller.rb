class IdeasController < ApplicationController
  before_action :set_categories, only:[:index, :new, :search]

  def top
    @ideas = Idea.all.order(created_at: "DESC").limit(6)
  end

  def index
    @ideas = Idea.all.order(created_at: "DESC").limit(6)
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
    @ideas = Idea.where(category: params[:category]).page(params[:page]).per(6)
    @ideas_count = Idea.where(category: params[:category]).count
  end


  private

  def idea_params
    params.require(:idea).permit(:title, :content, :category).merge(user_id: current_user.id)
  end

  def set_categories
    @categories = ['webサイト', 'アプリ', 'ゲーム', '音楽', 'グルメ', '暮らし', 'ビジネス', 'オフライン', 'その他']
  end
end
