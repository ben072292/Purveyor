Purveyor::Application.routes.draw do
  resources :farmers_form
  resources :customerform
  resources :admins
  resources :inventory
  root to: "main_menu#index"
  
end
