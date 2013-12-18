Tagenger::Application.routes.draw do
  get "users/new"
  root to: 'users#new'

  # This names it faq_path
  match '/signup',  to: 'users#new',        via: 'get'
  match '/faq',     to: 'static_pages#faq', via: 'get'
  match '/index',   to: 'ui#index',         via: 'get'
  # get 'ui(/:action)', controller: 'ui'
  
end
