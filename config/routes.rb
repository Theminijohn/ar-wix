Rails.application.routes.draw do

  root 'pages#home'

  # Settings
  resources :settings

  get '/widget' => 'app#widget'
  get '/settings' => 'app#settings'
  get 'app/settingsupdate' => 'app#settingsupdate'

end
