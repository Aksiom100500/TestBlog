# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  resources :categories do
    resources :comments, only: [:create]
  end
  resources :articles do
    resources :comments, only: [:create]
  end
  root 'home#index'
end
