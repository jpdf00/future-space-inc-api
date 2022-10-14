Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "launchers#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :launchers
end
