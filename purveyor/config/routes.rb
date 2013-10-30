Purveyor::Application.routes.draw do

  resources :farmer_bio_form

  root :to => "main_menu#index"
  
end
