P3::Application.routes.draw do
  root :to => 'home#index'
  resources :user, :only => [:index, :new, :create]
  resources :images, :only => [:index, :show, :new]
  resources :location, :only => [:index, :new, :create] do
  end

  get '/map' => 'home#map'
  get '/points/:locale' => 'home#points'

  get '/photo/:id/' => 'landing#photo'
  get '/landing' => 'landing#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
