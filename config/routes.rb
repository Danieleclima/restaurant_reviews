Rails.application.routes.draw do
  resources :restaurants
  resources :reviews
  resources :users do
    resources :categories, only: [:show, :index, :new, :create]
  end

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#create'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
