Tagenger::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :messages
  resources :tags, only: [:create, :destroy]
  resources :users do
    resources :tags do
      member do
        delete :remove_user_tag
      end
    end
  end

  root to: 'users#new'
  #'/ui' to: 'ui#index'   # This was causing a redirect loop on Heroku

  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new', 		via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/faq',     to: 'static_pages#faq', via: 'get'
  match '/submit',  to: 'messages#new',     via: 'get'

  # UI routes
  match '/ui',      to: 'ui#index',         via: 'get'
  get 'ui(/:action)', controller: 'ui'
  
end