Purveyor::Application.routes.draw do


  resources :farmers_form
  resources :customers
  resources :admins
  root :to => "main_menu#index"
  
end
