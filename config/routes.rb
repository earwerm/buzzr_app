P3::Application.routes.draw do
  root :to => 'home#index'
  resources :user, :only => [:index, :new, :create]
  resources :location, :only => [:index, :new, :create] do
  end

  get '/points/:locale' => 'home#points'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/landing' => 'landing#index'

end