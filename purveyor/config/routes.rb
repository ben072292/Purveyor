Purveyor::Application.routes.draw do

  resources :farmer_bio_form
  resources :customerform
  resources :admins
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "main_menu#index"

  match '/signin',   to: 'sessions#new',     via: 'get'
  match '/signout',  to: 'sessions#destroy', via: 'get'
  match '/sessions', to: 'sessions#create',  via: 'get'
  
end
