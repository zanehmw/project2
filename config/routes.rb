Rails.application.routes.draw do
  get "welcome/index"
  root "welcome#index"
  resources :restaurants
  resources :reviews
  resources :categories
end
