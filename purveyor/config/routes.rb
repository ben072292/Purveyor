Purveyor::Application.routes.draw do

  resources :farmer_bio_form
  resources :customerform
  resources :admins
  root :to => "main_menu#index"
  
end
