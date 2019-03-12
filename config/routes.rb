Rails.application.routes.draw do
  
  get 'events/new'
  get 'events/index'
  get 'events/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'signup'  => 'users#new' 
  get 'attending'  => 'users#show'
  
end
