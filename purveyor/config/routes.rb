Purveyor::Application.routes.draw do

  resources :farmers_form
  resources :customers
  resources :farmers
  resources :admins
  resources :inventories do
    resources :items
  end
  resources :restricted
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "main_menu#index"

  match '/signin',   to: 'sessions#new',     via: 'get'
  match '/signout',  to: 'sessions#destroy', via: 'delete'
  match '/sessions', to: 'sessions#create',  via: 'post'
  
end
