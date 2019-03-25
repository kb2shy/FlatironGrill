Rails.application.routes.draw do
  resources :food_types
  resources :reviews
  resources :favorites
  resources :restaurants
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
