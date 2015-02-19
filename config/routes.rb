Rails.application.routes.draw do
  resources :answers

  resources :questions

  resources :users
  root to: 'questions#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  resources :questions do
  	resources :answers
  end
  end
