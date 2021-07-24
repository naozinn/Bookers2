Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  root to: 'homes#about'
  resources :books, only: [:create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update, :index, :create]
end
