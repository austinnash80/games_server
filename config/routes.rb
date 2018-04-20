Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root :to => 'pages#home'

  get '/links' => 'pages#links'
  get '/aboutus' => 'pages#aboutus'
  get '/contact' => 'pages#contact'
  get '/pages/display_selection' => 'pages#display_selection'
  post '/users' => 'pages#home'

  resources :users
  resources :events
  resources :games

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
