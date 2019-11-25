# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories do
    resources :comments, only: [:create]
  end
  resources :articles do
    resources :comments, only: [:create]
  end
  root 'home#index'
end
