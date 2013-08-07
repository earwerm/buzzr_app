BuzzrApp::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :only => [:index, :new, :create]
  resources :locations, :only => [:index, :create]
  resources :images, :only => [:index, :show, :new]

  get '/map' => 'home#map'
  get '/points/:locale' => 'home#points'

  get '/photo/:id/' => 'landing#photo'
  get '/landing' => 'landing#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
