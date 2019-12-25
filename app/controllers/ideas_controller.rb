class IdeasController < ApplicationController

  def top
    @ideas = Idea.all
  end

  def index
    @ideas = Idea.all
  end

  def show
    
  end

  def newlist

  end

  def popular
  end

  def new
    @idea = Idea.new
    @categories = [['webサイト', 1], ['アプリ', 2], ['ゲーム', 3], ['音楽', 4], ['グルメ', 5], ['暮らし', 6], ['ビジネス', 7], ['オフライン', 8], ['その他', 9]]
  end

  def create
    @idea = Idea.new(idea_params)

    @category_number = params.require(:idea).permit(:number)
    @idea.categories.new(@category_number)
    @idea.save
    redirect_to root_path
  end


  private

  def idea_params
    params.require(:idea).permit(:title, :content).merge(user_id: current_user.id)
  end
end
