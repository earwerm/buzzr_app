BuzzrApp::Application.routes.draw do
  root :to => 'home#index'

  resources :images, :locations, :users
end
