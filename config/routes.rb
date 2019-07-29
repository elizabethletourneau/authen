Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  root 'home#index'

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
  delete 'logout'=> 'sessions#destroy'

 #Rooms
  resources :room_messages
  resources :rooms
  # get '/logout'=> 'sessions#destroy'
  # get '/users' => 'users#index'
  # get '/signup' => 'users#new'
  # patch '/users/:id/(.:format)' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

