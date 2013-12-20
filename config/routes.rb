Tagenger::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # resources :messages

  root to: 'users#new'
  #'/ui' to: 'ui#index'   # This was causing a redirect loop on Heroku

  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new', 		via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/faq',     to: 'static_pages#faq', via: 'get'

  # UI routes
  match '/ui',      to: 'ui#index',         via: 'get'
  get 'ui(/:action)', controller: 'ui'
  
end