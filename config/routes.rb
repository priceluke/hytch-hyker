Rails.application.routes.draw do

  resources :trip_users
  devise_for :users
  root 'home#index'

  resources :users do
    #resources :trips
  end
  resources :trips

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
