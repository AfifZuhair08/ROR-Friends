Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  root 'home#index'
  get 'home/about'

  mount API::Base, at: "/"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
