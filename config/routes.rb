Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registerations: 'users/registerations'
  }
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'user/:id', to: 'users#profile', as: 'user'

  # Defines the root path route ("/")
  root 'products#index'
end
