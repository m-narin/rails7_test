Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  
  root "tweets#index"
  resources :tweets

end
