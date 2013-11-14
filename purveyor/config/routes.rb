Purveyor::Application.routes.draw do


  resources :farmer
  resources :customerform
  resources :admins
  root :to => "main_menu#index"
  
end
