Rails.application.routes.draw do
  root 'ideas#top'

  resources :ideas do
    collection do
      get :top
      get :newlist
      get :popular
    end
  end
end
