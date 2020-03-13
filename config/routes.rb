Rails.application.routes.draw do
  root to: 'contents#index'
  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profile, only: [:index]
  resources :music, only: [:index]
  resources :info, only: [:index]
  resources :video, only: [:index]

  resources :picture, only: [:index, :show]
  resources :contact, only: [:new, :create, :done]
  
end
