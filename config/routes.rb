Rails.application.routes.draw do
  get '/recipes' => 'recipes#recipes'
  post '/recipes' => 'recipes#create'

  delete '/recipes/:id' => 'recipes#destroy'

end
