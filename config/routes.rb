Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  #No route matches {:action=>"create", :controller=>"sessions", :user=>{:name=>"Connie", :password=>"M4heswaran"}}
  
  post '/login' => 'sessions#create'

  get '/signup' => 'users#new'

  resources :users

end
