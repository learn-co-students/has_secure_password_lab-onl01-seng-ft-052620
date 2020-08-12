Rails.application.routes.draw do
  
root 'sessions#new'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'
get '/hello' => 'users#show'
get '/signup' => 'users#new'
post '/signup' => 'users#create'
 
end
