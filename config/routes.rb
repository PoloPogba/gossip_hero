Rails.application.routes.draw do

  get '/', to: 'pages#home', as: 'home'

  get '/welcome(/:first_name)', to: 'pages#welcome', as: 'welcome'  #le lien || controller |methode | nom de page views
 
  get '/show/:id', to: 'pages#show', as: 'show'

  get '/user/:id', to: 'pages#user', as: 'user'

  get '/team', to: 'pages#team', as: 'team'

  get '/contact', to: 'pages#contact', as: 'contact'  #le lien || controller |methode | nom de page views



end
