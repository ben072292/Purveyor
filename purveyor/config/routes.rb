Purveyor::Application.routes.draw do

  resources :farmer_bio_form
  resources :customerform
  root :to => "main_menu#index"
  
end
