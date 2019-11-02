Rails.application.routes.draw do

  get 'users/index'
  resources :trip_users
  devise_for :users
  root 'home#index'

  resources :users do
    #resources :trips
  end
  resources :trips
  get "home/myaccount",    to: "home#myaccount"
  get    "users",     to: "users#index"
  delete "users/:id", to: "users#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
