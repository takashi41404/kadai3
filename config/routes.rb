Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  resources :users, only: [:index, :show, :edit, :destroy, :update]
  resources :books, only: [:new, :index, :create, :show, :edit, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
