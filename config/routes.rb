Rails.application.routes.draw do
  
  root to: "home#index"
  post "shorten" => "home#shorten"
  get "links" => "home#links"
  
  devise_for :users
  
  get 'shortener/:id' => "shortener/shortened_urls#show"

end
