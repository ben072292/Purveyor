Purveyor::Application.routes.draw do
  get "form/customerform"
  root :to => "form#customerform"
  resources :farmer_bio_form

  get "form/farmer_bio"
  root :to => "form#farmer_bio_form"
  
end
