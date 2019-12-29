Rails.application.routes.draw do
  devise_for :users
  root 'ideas#top'

  resources :users
  resources :ideas do
    collection do
      get :top
      get :newlist
      get :popular
    end
  end
  resources :comments, only:[:create, :destroy]

  resources :likes, only:[:destroy] do
    member do
      post :like
    end
  end
end
