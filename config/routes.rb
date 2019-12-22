Rails.application.routes.draw do
  root 'ideas#top'

  resources :ideas do
    collection do
      get :top
    end
  end
end
