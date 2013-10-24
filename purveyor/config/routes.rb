Purveyor::Application.routes.draw do
  get "form/customerform"

  root :to => "form#customerform"

end
