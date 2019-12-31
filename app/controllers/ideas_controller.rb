class IdeasController < ApplicationController
  before_action :set_categories, only:[:index, :new, :search, :new_lists, :popular_lists]
  LIMIT = 6

  def top
    @ideas = Idea.all.order(created_at: "DESC").limit(LIMIT)
  end

  def index
    @ideas = Idea.all.order(created_at: "DESC").limit(LIMIT)
    @popular_ideas = Idea.find(Like.group(:idea_id).order('count(idea_id) desc').limit(LIMIT).pluck(:idea_id))
  end

  def show
    @idea = Idea.find(params[:id])
    @user = User.find(@idea.user_id)
    @comments = @idea.comments.order(created_at: "DESC")
  end

  def new_lists
    @ideas = Idea.all.order(created_at: "DESC").page(params[:page]).per(LIMIT)
  end

  def popular_lists
    @popular_ideas = Idea.find(Like.group(:idea_id).order('count(idea_id) desc').pluck(:idea_id))
    @popular_lists = Kaminari.paginate_array(@popular_ideas).page(params[:page]).per(LIMIT)
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
    @ideas = Idea.where(category: params[:category]).page(params[:page]).per(LIMIT)
    @ideas_count = Idea.where(category: params[:category]).count
  end


  def what

  end


  private

  def idea_params
    params.require(:idea).permit(:title, :content, :category).merge(user_id: current_user.id)
  end

  def set_categories
    @categories = ['webサイト', 'アプリ', 'ゲーム', '音楽', 'グルメ', '暮らし', 'ビジネス', 'オフライン', 'その他']
  end
end
