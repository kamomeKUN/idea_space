Rails.application.routes.draw do
  devise_for :users
  root 'ideas#top'

  resources :users do
    collection do
      get :delete
    end
    member do
      get   :follow
      get   :followers
      get   :like
      patch :avatar_update
    end
  end

  resources :ideas do
    collection do
      get :top
      get :new_lists
      get :popular_lists
      get :search
      get :what
      get :terms
    end
  end

  resources :comments, only:[:create, :destroy]

  resources :likes, only:[:destroy] do
    member do
      post :like
    end
  end

  resources :relationships, only: [:create, :destroy]
end
