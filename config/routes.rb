Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root "sessions#new"

  get "/homes", to: "homes#index"
  
  get "/menus", to: "menus#index"
  get "/menus/1", to: "menus1#index"
  get "/menus/2", to: "menus2#index"
  get "/menus/3", to: "menus3#index"
  get "/menus/4", to: "menus4#index"
  get "/menus/5", to: "menus5#index"
  get "/menus/6", to: "menus6#index"

  get "/orders", to: "orders#index"


  get 'signup'  => 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  
  
  
end
