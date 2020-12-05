Rails.application.routes.draw do
  resources :clients, only: [:new, :create]
  resources :couriers, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'sessions/login'
  get 'welcome', to: 'sessions#welcome'
  get '/logout', to: 'sessions#logout'
  get 'app_root/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'app_root#index'
end
