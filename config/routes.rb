Rails.application.routes.draw do
  
  root 'events#index'
  get 'events' => 'events#index'
  get 'events/new' => 'events#new'
  get 'events/:id' => 'events#show', as: :event
  post 'events' => 'events#create'

  resources :users
  get 'signup'  => 'users#new' 
  get 'attending'  => 'users#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
end
