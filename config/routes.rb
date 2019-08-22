Rails.application.routes.draw do
  resources :bookings
  resources :services
  resources :retails
  resources :customers
  resources :users, :only => [:new, :create, :index]
  resources :categories
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
