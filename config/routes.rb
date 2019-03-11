Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'signup'  => 'users#new' 
  get 'attending'  => 'users#show'
  
end
