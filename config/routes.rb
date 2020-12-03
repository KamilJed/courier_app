Rails.application.routes.draw do
  get 'app_root/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'app_root#index'
end
