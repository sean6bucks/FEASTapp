Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
  resources :users, only: [:index, :show, :destroy]
  root 'home#index'
  resources :projects
  resources :categories
  get '/work' => 'home#work', as: 'works'
  get '/contact' => 'home#contact', as: 'contact'
  get '/work/:displayname' => 'home#show', as: 'work'
  get '/admin' => 'admin#index'
end
