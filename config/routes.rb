Rails.application.routes.draw do

  resources :gossips
  resources :users
  resources :cities
 
  
  get '/team', to: 'pages#team', as: 'team'
  get '/contact', to: 'pages#contact', as: 'contact'  


end
