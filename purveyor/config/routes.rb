Purveyor::Application.routes.draw do
  get "form/customerform"
  root :to => "form#customerform"
  resources :farmer_bio_form

end
