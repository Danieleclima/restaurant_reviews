Rails.application.routes.draw do
  get '/users/most_reviews' => 'users#most_reviews'
  resources :categories
  resources :restaurants
  resources :reviews
  resources :users do
    resources :categories, only: [:show, :index, :new, :create]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  get '/logout' => 'sessions#destroy'
  get '/' => 'restaurants#index'
  get '/auth/facebook/callback' => 'sessions#create'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
