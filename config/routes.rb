BuzzrApp::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :only => [:index, :new, :create]
  resources :images, :only => [:index, :show, :new]
  resources :location, :only => [:index, :new, :create] do
  end

# modal sign in path


# locations
  # get '/map' => 'locations#map'
  get '/points/:locale' => 'locations#points'

# images
  get '/photo/:id/' => 'images#photo'

# session
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end