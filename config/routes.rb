Rails.application.routes.draw do
  root to: "urls#index"

  devise_for :users
  resources :urls

  get 'home/index'
  
end
