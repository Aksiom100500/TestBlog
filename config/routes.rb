Rails.application.routes.draw do
  resources :categories do
    resources :comments, only: [:create]
  end
  resources :articles, except: [:index] do
    resources :comments, only: [:create]
  end
  root 'categories#index'
end
