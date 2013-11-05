Purveyor::Application.routes.draw do

  resources :farmers_form
  resources :customerform
  root :to => "main_menu#index"
  
end
