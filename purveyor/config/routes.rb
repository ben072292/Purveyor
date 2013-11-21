Purveyor::Application.routes.draw do


  resources :farmers
  resources :customerform
  resources :admins
  root :to => "main_menu#index"
  
end
