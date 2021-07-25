Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  root to: 'homes#about'
  resources :books, only: [:index, :show, :create, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :create, :edit, :update]
end
