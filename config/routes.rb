Rails.application.routes.draw do

  resources :reviews
  resources :favorites, only: [:create, :destroy]
  resources :restaurants, only: [:index, :show]
  resources :users, except: [:index]

  root 'restaurants#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
