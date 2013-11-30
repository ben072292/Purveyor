Purveyor::Application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
   
  resources :farmers_form
=======

>>>>>>> ae5e37cb9cae691df2496765235b788200863c81
=======

>>>>>>> ae5e37cb9cae691df2496765235b788200863c81
  resources :customers
  resources :farmers
  resources :admins
  resources :inventories do
    resources :items
  end
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "main_menu#index"

  match '/signin',   to: 'sessions#new',     via: 'get'
  match '/signout',  to: 'sessions#destroy', via: 'delete'
  match '/sessions', to: 'sessions#create',  via: 'post'
  
end
