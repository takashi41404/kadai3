Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:new, :index, :show, :edit]
  resources :books, only: [:new, :index, :create, :show, :edit, :destroy]
  get '/homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
