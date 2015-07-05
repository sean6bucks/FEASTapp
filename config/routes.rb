Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :destory]
  root 'home#index'
  resources :projects
  resources :categories
  get '/work' => 'home#work'
  get '/work/:displayname' => 'home#show'
  get '/admin' => 'admin#index'
end
