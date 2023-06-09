Rails.application.routes.draw do

  get 'photos/index'
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  get '/photos', to: 'photos#index', as: 'photo_index'

  resources :users
  resources :topics 
  
  get 'comments/new'
  post '/comments', to: 'comments#create'
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get '/profimage', to: 'profimage#new'
  post '/profimage', to: 'profimage#create'
  delete '/profimage', to: 'profimage#destroy'
  
  get     '/login',  to: 'sessions#new'
  post    '/login',  to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  
  
end