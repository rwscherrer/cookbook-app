Rails.application.routes.draw do
  
  # recipes routes
  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'
  post '/recipes' => 'recipes#create'
  delete '/recipes/:id' => 'recipes#destroy'

  
  # users routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # session routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
