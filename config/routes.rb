Rails.application.routes.draw do
  
  resources :users
  get 'signup'  => 'users#new' 
  get 'attending'  => 'users#show'
  
end
