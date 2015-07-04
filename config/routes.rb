Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :destory]
  root 'home#index'
  resources :projects
  resources :categories, only: [:new, :create, :destroy]
  get '/portfolio' => 'home#portfolio'
end
