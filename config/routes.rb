BuzzrApp::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :only => [:index, :new, :create]

  resources :locations, :only => [:index, :create]
    #collection do
    #  get :???
    #end

  resources :images, :only => [:index, :show, :new]
    #collection do
    #  get :???
    #end

  get '/map' => 'home#map'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

