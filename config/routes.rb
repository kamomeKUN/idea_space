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
end
