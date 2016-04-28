Rails.application.routes.draw do
  get "welcome/index"
  root "welcome#index"
  resources :restaurants do
    resources :ratings
  end
  resources :reviews
  resources :categories

  post "/users" => "users#create"
  # get "/users" => "users#index"
  # get "/users/:id" => "users#show"
  resources :users, only: [:index, :show]
  get "/signup" => "users#new"
  get "/signin" => "sessions#new"
  post "/signin" => "sessions#create"
  get "/signout" => "sessions#destroy"

end
