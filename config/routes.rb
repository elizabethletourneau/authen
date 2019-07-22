Rails.application.routes.draw do
  root 'users#index'

  resources :users

  # get '/login' => 'sessions#new'
  # resources :users
  # post 'login' => 'sessions#create'
  # get '/logout'=> 'sessions#destroy'
  get 'signup'  => 'users#new'
resources :users
  get 'login' => 'sessions#new'
  resources :users
  post 'login' => 'sessions#create'
  get 'logout'=> 'sessions#destroy'
  get '/logout'=> 'sessions#destroy'
  # get '/users' => 'users#index'
  # get '/signup' => 'users#new'
  # patch '/users/:id/(.:format)' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

