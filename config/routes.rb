Rails.application.routes.draw do
  
  root to: "urls#new"

  devise_for :users
  resources :urls

  get 'home/index'
  
end
