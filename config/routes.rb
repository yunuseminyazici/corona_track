Rails.application.routes.draw do
  resources :covids
  resources :mytables
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  get 'covids/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
