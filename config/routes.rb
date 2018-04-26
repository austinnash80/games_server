Rails.application.routes.draw do
  get 'pages/aboutus'

  get 'pages/contact'

  devise_for :users, :controllers => { registrations: 'registrations' }, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  root :to => 'pages#home'

  get '/links' => 'pages#links'
  get '/aboutus' => 'pages#aboutus'
  get '/contact' => 'pages#contact'
  get '/edit_user' => 'users#edit'
  get '/pages/display_selection' => 'pages#display_selection'
  post '/users' => 'pages#home'
  post '/edit_user' => 'users#edit'

  resources :users
  # match 'users/:id', :to => 'users#show', :as => :profile
  # resources :edit_user

  resources :events
  resources :games
  resources :charges
  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
