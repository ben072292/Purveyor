Purveyor::Application.routes.draw do

  get "users/new"
  resources :farmer_bio_form
  resources :customerform
  resources :admins
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "main_menu#index"

  match '/signin',   to: 'sessions#new',     via: 'get'
  match '/signout',  to: 'sessions#destroy', via: 'delete'
  match '/sessions', to: 'sessions#create',  via: 'post'
  
end
