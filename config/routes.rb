Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users
  #get 'homes/index'
  
  # hide profile id, Note user set to dependent: :destroy so no destroy route
  get 'profiles/new' => 'profiles#new', as: 'new_profile'
  get 'profiles/edit' => 'profiles#edit', as: 'edit_profile'
  get 'profiles' => 'profiles#show', as: 'profiles'
  patch 'profiles' => 'profiles#update', as: ''
  put 'profiles' => 'profiles#update', as: 'profile'
  post 'profiles' => 'profiles#create', as: 'new_profile_create'
  
  resources :homes, only: [:index, :show]
  resources :vehicles
  resources :adapters, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :charge_stations do
    resources :adapter_plugs, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :bookings
  resources :conversations, only: [:index, :create]
  resources :messages, only: [:index, :create]
  resources :favourites, only: [:index, :create, :destroy]
  resources :charge_sessions, only: [:index]
  resources :charge_session_starts, only: [:new, :create]
  resources :charge_session_ends, only: [:new, :create]
  resources :payments, only: [:show, :new, :create]
  get '/support' => 'support#new'
  post '/support' => 'support#success'
  
  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
