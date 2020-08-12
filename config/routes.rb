Rails.application.routes.draw do
  # root 'application#welcome'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  post '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create '

  get '/show' => 'sessions#show'
    
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
