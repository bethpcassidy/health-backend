Rails.application.routes.draw do
  resources :appointments, format: "json"
  resources :patients, format: "json"
  resources :doctors, format: "json"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
